#!/bin/bash

SOURCE_DIR=$(pwd)
DIR=""
SPACK_DIR=""

if [ $# -eq 0 ]; then
  DIR=$(pwd)/gpa
else
  if [ $# -eq 1 ]; then
    DIR=$1
  else
    if [ $# -eq 2 ]; then
      DIR=$1
      SPACK_DIR=$2
    fi
  fi
fi

if [ -z "$DIR" ]; then
  echo $DIR
  echo $SPACK_DIR
  echo "Wrong prefix"
  exit
fi

mkdir $DIR
cd $DIR

# Install spack
if [ -z $SPACK_DIR ]; then
  git clone https://github.com/spack/spack.git
  export SPACK_ROOT=$(pwd)/spack
  export PATH=${SPACK_ROOT}/bin:${PATH}
  source ${SPACK_ROOT}/share/spack/setup-env.sh

  # Install hpctoolkit dependencies
  # spack install --only dependencies hpctoolkit ^dyninst@master ^binutils@2.34+libiberty~nls
  spack install --only dependencies hpctoolkit@2022.05.15 ^dyninst@12.3.0 ^binutils@2.35+libiberty~nls # ^boost@1.83.0 ^libtool@2.4.6
  spack install libmonitor@master+dlopen+hpctoolkit
  # spack install mbedtls gotcha
  # try fix:
  spack install mbedtls@3.3.0%gcc@12.3.0+pic build_system=makefile build_type=Release libs=static arch=linux-ubuntu22.04-icelake gotcha@1.0.4


  # Find spack dir
  B=$(spack find --path boost | tail -n 1 | cut -d ' ' -f 3)
  SPACK_DIR=${B%/*}
fi

CUDA_PATH=/usr/local/cuda/
CUPTI_PATH=$CUDA_PATH/extras/CUPTI/

# install hpctoolkit
cd $SOURCE_DIR
cd hpctoolkit
mkdir build
cd build
../configure --prefix=$DIR/hpctoolkit --with-cuda=$CUDA_PATH \
  --with-cupti=$CUPTI_PATH --with-spack=$SPACK_DIR --enable-develop
# make install -j8
make install -j8 &> log.txt

echo "Install in "$DIR"/hpctoolkit"

cd $SOURCE_DIR
cp -rf ./bin $DIR
export PATH=$DIR/bin:${PATH}
