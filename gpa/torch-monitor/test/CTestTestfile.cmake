# CMake generated Testfile for 
# Source directory: /home/xjding/Projects/GPA/GPA/torch-monitor/test
# Build directory: /home/xjding/Projects/GPA/GPA/gpa/torch-monitor/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(add_cpu "/home/xjding/anaconda3/envs/new_torch_monitor/bin/python3.11" "/home/xjding/Projects/GPA/GPA/gpa/torch-monitor/test/add.py" "cpu")
set_tests_properties(add_cpu PROPERTIES  ENVIRONMENT "LD_PRELOAD=/home/xjding/Projects/GPA/GPA/gpa/torch-monitor/lib/driver.so" _BACKTRACE_TRIPLES "/home/xjding/Projects/GPA/GPA/torch-monitor/test/CMakeLists.txt;25;add_test;/home/xjding/Projects/GPA/GPA/torch-monitor/test/CMakeLists.txt;0;")
add_test(add_cuda "/home/xjding/anaconda3/envs/new_torch_monitor/bin/python3.11" "/home/xjding/Projects/GPA/GPA/gpa/torch-monitor/test/add.py" "cuda")
set_tests_properties(add_cuda PROPERTIES  ENVIRONMENT "LD_PRELOAD=/home/xjding/Projects/GPA/GPA/gpa/torch-monitor/lib/driver.so" _BACKTRACE_TRIPLES "/home/xjding/Projects/GPA/GPA/torch-monitor/test/CMakeLists.txt;28;add_test;/home/xjding/Projects/GPA/GPA/torch-monitor/test/CMakeLists.txt;0;")
add_test(mnist_cpu "/home/xjding/anaconda3/envs/new_torch_monitor/bin/python3.11" "/home/xjding/Projects/GPA/GPA/gpa/torch-monitor/test/mnist.py" "--epochs" "1" "--no-cuda" "--dry-run")
set_tests_properties(mnist_cpu PROPERTIES  ENVIRONMENT "LD_PRELOAD=/home/xjding/Projects/GPA/GPA/gpa/torch-monitor/lib/driver.so" _BACKTRACE_TRIPLES "/home/xjding/Projects/GPA/GPA/torch-monitor/test/CMakeLists.txt;33;add_test;/home/xjding/Projects/GPA/GPA/torch-monitor/test/CMakeLists.txt;0;")
add_test(mnist_cuda "/home/xjding/anaconda3/envs/new_torch_monitor/bin/python3.11" "/home/xjding/Projects/GPA/GPA/gpa/torch-monitor/test/mnist.py" "--epochs" "1" "--dry-run")
set_tests_properties(mnist_cuda PROPERTIES  ENVIRONMENT "LD_PRELOAD=/home/xjding/Projects/GPA/GPA/gpa/torch-monitor/lib/driver.so" _BACKTRACE_TRIPLES "/home/xjding/Projects/GPA/GPA/torch-monitor/test/CMakeLists.txt;36;add_test;/home/xjding/Projects/GPA/GPA/torch-monitor/test/CMakeLists.txt;0;")
add_test(resnet_cpu "/home/xjding/anaconda3/envs/new_torch_monitor/bin/python3.11" "/home/xjding/Projects/GPA/GPA/gpa/torch-monitor/test/resnet.py" "cpu")
set_tests_properties(resnet_cpu PROPERTIES  ENVIRONMENT "LD_PRELOAD=/home/xjding/Projects/GPA/GPA/gpa/torch-monitor/lib/driver.so" _BACKTRACE_TRIPLES "/home/xjding/Projects/GPA/GPA/torch-monitor/test/CMakeLists.txt;41;add_test;/home/xjding/Projects/GPA/GPA/torch-monitor/test/CMakeLists.txt;0;")
add_test(resnet_cuda "/home/xjding/anaconda3/envs/new_torch_monitor/bin/python3.11" "/home/xjding/Projects/GPA/GPA/gpa/torch-monitor/test/resnet.py" "cuda")
set_tests_properties(resnet_cuda PROPERTIES  ENVIRONMENT "LD_PRELOAD=/home/xjding/Projects/GPA/GPA/gpa/torch-monitor/lib/driver.so" _BACKTRACE_TRIPLES "/home/xjding/Projects/GPA/GPA/torch-monitor/test/CMakeLists.txt;44;add_test;/home/xjding/Projects/GPA/GPA/torch-monitor/test/CMakeLists.txt;0;")
add_test(callback_io_cpu "/home/xjding/anaconda3/envs/new_torch_monitor/bin/python3.11" "/home/xjding/Projects/GPA/GPA/gpa/torch-monitor/test/callback_io.py" "cpu")
set_tests_properties(callback_io_cpu PROPERTIES  ENVIRONMENT "LD_PRELOAD=/home/xjding/Projects/GPA/GPA/gpa/torch-monitor/lib/driver.so" _BACKTRACE_TRIPLES "/home/xjding/Projects/GPA/GPA/torch-monitor/test/CMakeLists.txt;49;add_test;/home/xjding/Projects/GPA/GPA/torch-monitor/test/CMakeLists.txt;0;")
add_test(callback_io_cuda "/home/xjding/anaconda3/envs/new_torch_monitor/bin/python3.11" "/home/xjding/Projects/GPA/GPA/gpa/torch-monitor/test/callback_io.py" "cuda")
set_tests_properties(callback_io_cuda PROPERTIES  _BACKTRACE_TRIPLES "/home/xjding/Projects/GPA/GPA/torch-monitor/test/CMakeLists.txt;52;add_test;/home/xjding/Projects/GPA/GPA/torch-monitor/test/CMakeLists.txt;0;")
