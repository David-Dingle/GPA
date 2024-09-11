##
# A simple test case for examining the functionality of callback inputs/outputs capturing
# The code was from: https://pytorch.org/docs/stable/generated/torch.nn.CrossEntropyLoss.html
#
# #

import sys
import torch # type: ignore
import torch.nn as nn # type: ignore
device = str(sys.argv[1])
device = torch.device(device)

# Test case 1: System


loss = nn.CrossEntropyLoss()
# input = torch.randn(3, 5, requires_grad=True, device=device)
input_org = torch.randn(5, 3, requires_grad=True, device=device)
input = input_org.T
target = torch.empty(3, dtype=torch.long, device=device).random_(5)
output = loss(input, target)
output.backward()


#Example of target with class probabilities
# loss = nn.CrossEntropyLoss()
# input = torch.randn(3, 5, requires_grad=True, device=device)
# target = torch.randn(3, 5, device=device).softmax(dim=1)
# output = loss(input, target)
# output.backward()


# Test case 2: View Forest CRUD

# device = str(sys.argv[1])
# device = torch.device(device)
# tensor_a1 = torch.zeros(10, 10, requires_grad=False, device=device)
# view_b = tensor_a1[1:-1]
# view_c = view_b[2:-2]
# view_bb = view_b[3:-2]
# view_bb_a = view_bb[:, 1:-1]
# view_bb_b = view_bb[:, 2:-2]
# view_t = view_c.T
# view_q = view_c[1:-2]


# Test case 3:

    # Sub 1
device = str(sys.argv[1])
device = torch.device(device)
tensor_a2 = torch.ones(10, 10, requires_grad=False, device=device)
view_b = tensor_a2[1:-1]
view_c = view_b[2:-2]
view_bb = view_b[3:-2]
view_bb_a = view_bb[:, 1:-1]
view_bb_b = view_bb[:, 2:-2]
view_t = view_c.T
view_q = view_c[1:-2]
tensor_a2[3:5, 7] = torch.Tensor([1.0])

    # Sub 2
# tensor_a = torch.randn(10, 10, requires_grad=False, device=device)
# view_t = tensor_a.T
# view_t[3: 5, 1:3] = torch.Tensor([1.0])
# view_b = view_t[0:-1, :]

    # Sub 3-1
# tensor_a = torch.randn(10, 10, 10, 10, requires_grad=False, device=device)
# view_t = torch.transpose(tensor_a, 0, 1)
# view_t[8, 7, 6, 5] = torch.Tensor([1.0])
# print(view_t)

    # Sub 3-2
# tensor_a = torch.randn(10, 10, 10, 10, requires_grad=False, device=device)
# view_t = torch.transpose(tensor_a, 0, 1)
# view_t[8, 7, 6, 5] = torch.Tensor([1.0])
# view_b = view_t[0:-1, :]
