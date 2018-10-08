# tempRepo
The model file is in the folder named .P_Net',
and the whole error stack shows bellow:

Parse file [model-30.meta] with binary format successfully.
Tensorflow model file [model-30.meta] loaded successfully.
Tensorflow checkpoint file [model-30] loaded successfully. [31] variables loaded.
2018-10-08 15:54:01.353743: I tensorflow/tools/graph_transforms/transform_graph.cc:318] Applying fold_constants
2018-10-08 15:54:01.368798: I tensorflow/core/platform/cpu_feature_guard.cc:141] Your CPU supports instructions that this TensorFlow binary was not compiled to use: AVX2 FMA
IR network structure is saved as [b1be975b61e5464b8058208b44d8cb8a.json].
IR network structure is saved as [b1be975b61e5464b8058208b44d8cb8a.pb].
IR weights are saved as [b1be975b61e5464b8058208b44d8cb8a.npy].
Parse file [b1be975b61e5464b8058208b44d8cb8a.pb] with binary format successfully.
Warning: Graph Construct a self-loop node conv1/alphas. Ignored.
Warning: Graph Construct a self-loop node conv2/alphas. Ignored.
Warning: Graph Construct a self-loop node conv3/alphas. Ignored.
Target network code snippet is saved as [b1be975b61e5464b8058208b44d8cb8a.py].
Target weights are saved as [b1be975b61e5464b8058208b44d8cb8a.npy].
WARNING: Logging before InitGoogleLogging() is written to STDERR
I1008 15:54:02.265859 18065 net.cpp:53] Initializing net from parameters: 
state {
  phase: TRAIN
  level: 0
}
layer {
  name: "Placeholder"
  type: "Input"
  top: "Placeholder"
  input_param {
    shape {
      dim: 1
      dim: 3
      dim: 12
      dim: 12
    }
  }
}
layer {
  name: "conv1_Conv2D"
  type: "Convolution"
  bottom: "Placeholder"
  top: "conv1_Conv2D"
  convolution_param {
    num_output: 10
    bias_term: true
    group: 1
    stride: 1
    pad_h: 0
    pad_w: 0
    kernel_h: 3
    kernel_w: 3
  }
}
layer {
  name: "conv1_Relu"
  type: "ReLU"
  bottom: "conv1_Conv2D"
  top: "conv1_Conv2D"
}
layer {
  name: "conv1_Abs"
  type: "AbsVal"
  bottom: "conv1_Conv2D"
  top: "conv1_Abs"
}
layer {
  name: "conv1_sub"
  type: "Eltwise"
  bottom: "conv1_Conv2D"
  bottom: "conv1_Abs"
  top: "conv1_sub"
  eltwise_param {
    coeff: 1
    coeff: -1
  }
}
layer {
  name: "conv1_mul"
  type: "Scale"
  bottom: "conv1_sub"
  top: "conv1_sub"
  scale_param {
    bias_term: false
  }
}
layer {
  name: "conv1_mul_1"
  type: "Scale"
  bottom: "conv1_sub"
  top: "conv1_sub"
  scale_param {
    bias_term: true
  }
}
layer {
  name: "conv1_add"
  type: "Eltwise"
  bottom: "conv1_Conv2D"
  bottom: "conv1_sub"
  top: "conv1_add"
  eltwise_param {
    operation: SUM
  }
}
layer {
  name: "pool1_MaxPool"
  type: "Pooling"
  bottom: "conv1_add"
  top: "pool1_MaxPool"
  pooling_param {
    pool: MAX
    kernel_size: 2
    stride: 2
    pad_h: 0
    pad_w: 0
  }
}
layer {
  name: "conv2_Conv2D"
  type: "Convolution"
  bottom: "pool1_MaxPool"
  top: "conv2_Conv2D"
  convolution_param {
    num_output: 16
    bias_term: true
    group: 1
    stride: 1
    pad_h: 0
    pad_w: 0
    kernel_h: 3
    kernel_w: 3
  }
}
layer {
  name: "conv2_Relu"
  type: "ReLU"
  bottom: "conv2_Conv2D"
  top: "conv2_Conv2D"
}
layer {
  name: "conv2_Abs"
  type: "AbsVal"
  bottom: "conv2_Conv2D"
  top: "conv2_Abs"
}
layer {
  name: "conv2_sub"
  type: "Eltwise"
  bottom: "conv2_Conv2D"
  bottom: "conv2_Abs"
  top: "conv2_sub"
  eltwise_param {
    coeff: 1
    coeff: -1
  }
}
layer {
  name: "conv2_mul"
  type: "Scale"
  bottom: "conv2_sub"
  top: "conv2_sub"
  scale_param {
    bias_term: false
  }
}
layer {
  name: "conv2_mul_1"
  type: "Scale"
  bottom: "conv2_sub"
  top: "conv2_sub"
  scale_param {
    bias_term: true
  }
}
layer {
  name: "conv2_add"
  type: "Eltwise"
  bottom: "conv2_Conv2D"
  bottom: "conv2_sub"
  top: "conv2_add"
  eltwise_param {
    operation: SUM
  }
}
layer {
  name: "conv3_Conv2D"
  type: "Convolution"
  bottom: "conv2_add"
  top: "conv3_Conv2D"
  convolution_param {
    num_output: 32
    bias_term: true
    group: 1
    stride: 1
    pad_h: 0
    pad_w: 0
    kernel_h: 3
    kernel_w: 3
  }
}
layer {
  name: "conv3_Relu"
  type: "ReLU"
  bottom: "conv3_Conv2D"
  top: "conv3_Conv2D"
}
layer {
  name: "conv3_Abs"
  type: "AbsVal"
  bottom: "conv3_Conv2D"
  top: "conv3_Abs"
}
layer {
  name: "conv3_sub"
  type: "Eltwise"
  bottom: "conv3_Conv2D"
  bottom: "conv3_Abs"
  top: "conv3_sub"
  eltwise_param {
    coeff: 1
    coeff: -1
  }
}
layer {
  name: "conv3_mul"
  type: "Scale"
  bottom: "conv3_sub"
  top: "conv3_sub"
  scale_param {
    bias_term: false
  }
}
layer {
  name: "conv3_mul_1"
  type: "Scale"
  bottom: "conv3_sub"
  top: "conv3_sub"
  scale_param {
    bias_term: true
  }
}
layer {
  name: "conv3_add"
  type: "Eltwise"
  bottom: "conv3_Conv2D"
  bottom: "conv3_sub"
  top: "conv3_add"
  eltwise_param {
    operation: SUM
  }
}
layer {
  name: "conv4_1_Conv2D"
  type: "Convolution"
  bottom: "conv3_add"
  top: "conv4_1_Conv2D"
  convolution_param {
    num_output: 2
    bias_term: true
    group: 1
    stride: 1
    pad_h: 0
    pad_w: 0
    kernel_h: 1
    kernel_w: 1
  }
}
layer {
  name: "conv4_1_Reshape"
  type: "Flatten"
  bottom: "conv4_1_Conv2D"
  top: "conv4_1_Reshape"
}
layer {
  name: "conv4_1_Softmax"
  type: "Softmax"
  bottom: "conv4_1_Reshape"
  top: "conv4_1_Softmax"
}
layer {
  name: "conv4_1_Reshape_1"
  type: "Flatten"
  bottom: "conv4_1_Softmax"
  top: "conv4_1_Reshape_1"
}
layer {
  name: "cls_prob"
  type: "Reshape"
  bottom: "conv4_1_Reshape_1"
  top: "cls_prob"
  reshape_param {
    shape {
      dim: 384
      dim: 2
    }
  }
}
I1008 15:54:02.266026 18065 layer_factory.hpp:77] Creating layer Placeholder
I1008 15:54:02.266036 18065 net.cpp:86] Creating Layer Placeholder
I1008 15:54:02.266041 18065 net.cpp:382] Placeholder -> Placeholder
I1008 15:54:02.266057 18065 net.cpp:124] Setting up Placeholder
I1008 15:54:02.266060 18065 net.cpp:131] Top shape: 1 3 12 12 (432)
I1008 15:54:02.266064 18065 net.cpp:139] Memory required for data: 1728
I1008 15:54:02.266067 18065 layer_factory.hpp:77] Creating layer conv1_Conv2D
I1008 15:54:02.266074 18065 net.cpp:86] Creating Layer conv1_Conv2D
I1008 15:54:02.266078 18065 net.cpp:408] conv1_Conv2D <- Placeholder
I1008 15:54:02.266083 18065 net.cpp:382] conv1_Conv2D -> conv1_Conv2D
I1008 15:54:02.732412 18065 net.cpp:124] Setting up conv1_Conv2D
I1008 15:54:02.732434 18065 net.cpp:131] Top shape: 1 10 10 10 (1000)
I1008 15:54:02.732436 18065 net.cpp:139] Memory required for data: 5728
I1008 15:54:02.732445 18065 layer_factory.hpp:77] Creating layer conv1_Relu
I1008 15:54:02.732453 18065 net.cpp:86] Creating Layer conv1_Relu
I1008 15:54:02.732457 18065 net.cpp:408] conv1_Relu <- conv1_Conv2D
I1008 15:54:02.732462 18065 net.cpp:369] conv1_Relu -> conv1_Conv2D (in-place)
I1008 15:54:02.732738 18065 net.cpp:124] Setting up conv1_Relu
I1008 15:54:02.732745 18065 net.cpp:131] Top shape: 1 10 10 10 (1000)
I1008 15:54:02.732748 18065 net.cpp:139] Memory required for data: 9728
I1008 15:54:02.732750 18065 layer_factory.hpp:77] Creating layer conv1_Conv2D_conv1_Relu_0_split
I1008 15:54:02.732755 18065 net.cpp:86] Creating Layer conv1_Conv2D_conv1_Relu_0_split
I1008 15:54:02.732758 18065 net.cpp:408] conv1_Conv2D_conv1_Relu_0_split <- conv1_Conv2D
I1008 15:54:02.732761 18065 net.cpp:382] conv1_Conv2D_conv1_Relu_0_split -> conv1_Conv2D_conv1_Relu_0_split_0
I1008 15:54:02.732766 18065 net.cpp:382] conv1_Conv2D_conv1_Relu_0_split -> conv1_Conv2D_conv1_Relu_0_split_1
I1008 15:54:02.732771 18065 net.cpp:382] conv1_Conv2D_conv1_Relu_0_split -> conv1_Conv2D_conv1_Relu_0_split_2
I1008 15:54:02.732777 18065 net.cpp:124] Setting up conv1_Conv2D_conv1_Relu_0_split
I1008 15:54:02.732781 18065 net.cpp:131] Top shape: 1 10 10 10 (1000)
I1008 15:54:02.732785 18065 net.cpp:131] Top shape: 1 10 10 10 (1000)
I1008 15:54:02.732789 18065 net.cpp:131] Top shape: 1 10 10 10 (1000)
I1008 15:54:02.732791 18065 net.cpp:139] Memory required for data: 21728
I1008 15:54:02.732794 18065 layer_factory.hpp:77] Creating layer conv1_Abs
I1008 15:54:02.732798 18065 net.cpp:86] Creating Layer conv1_Abs
I1008 15:54:02.732801 18065 net.cpp:408] conv1_Abs <- conv1_Conv2D_conv1_Relu_0_split_0
I1008 15:54:02.732805 18065 net.cpp:382] conv1_Abs -> conv1_Abs
I1008 15:54:02.732811 18065 net.cpp:124] Setting up conv1_Abs
I1008 15:54:02.732815 18065 net.cpp:131] Top shape: 1 10 10 10 (1000)
I1008 15:54:02.732817 18065 net.cpp:139] Memory required for data: 25728
I1008 15:54:02.732820 18065 layer_factory.hpp:77] Creating layer conv1_sub
I1008 15:54:02.732825 18065 net.cpp:86] Creating Layer conv1_sub
I1008 15:54:02.732828 18065 net.cpp:408] conv1_sub <- conv1_Conv2D_conv1_Relu_0_split_1
I1008 15:54:02.732832 18065 net.cpp:408] conv1_sub <- conv1_Abs
I1008 15:54:02.732836 18065 net.cpp:382] conv1_sub -> conv1_sub
I1008 15:54:02.732841 18065 net.cpp:124] Setting up conv1_sub
I1008 15:54:02.732844 18065 net.cpp:131] Top shape: 1 10 10 10 (1000)
I1008 15:54:02.732847 18065 net.cpp:139] Memory required for data: 29728
I1008 15:54:02.732849 18065 layer_factory.hpp:77] Creating layer conv1_mul
I1008 15:54:02.732854 18065 net.cpp:86] Creating Layer conv1_mul
I1008 15:54:02.732857 18065 net.cpp:408] conv1_mul <- conv1_sub
I1008 15:54:02.732861 18065 net.cpp:369] conv1_mul -> conv1_sub (in-place)
I1008 15:54:02.732872 18065 net.cpp:124] Setting up conv1_mul
I1008 15:54:02.732875 18065 net.cpp:131] Top shape: 1 10 10 10 (1000)
I1008 15:54:02.732878 18065 net.cpp:139] Memory required for data: 33728
I1008 15:54:02.732882 18065 layer_factory.hpp:77] Creating layer conv1_mul_1
I1008 15:54:02.732885 18065 net.cpp:86] Creating Layer conv1_mul_1
I1008 15:54:02.732888 18065 net.cpp:408] conv1_mul_1 <- conv1_sub
I1008 15:54:02.732892 18065 net.cpp:369] conv1_mul_1 -> conv1_sub (in-place)
I1008 15:54:02.732897 18065 layer_factory.hpp:77] Creating layer conv1_mul_1
I1008 15:54:02.732906 18065 net.cpp:124] Setting up conv1_mul_1
I1008 15:54:02.732909 18065 net.cpp:131] Top shape: 1 10 10 10 (1000)
I1008 15:54:02.732913 18065 net.cpp:139] Memory required for data: 37728
I1008 15:54:02.732916 18065 layer_factory.hpp:77] Creating layer conv1_add
I1008 15:54:02.732920 18065 net.cpp:86] Creating Layer conv1_add
I1008 15:54:02.732924 18065 net.cpp:408] conv1_add <- conv1_Conv2D_conv1_Relu_0_split_2
I1008 15:54:02.732928 18065 net.cpp:408] conv1_add <- conv1_sub
I1008 15:54:02.732933 18065 net.cpp:382] conv1_add -> conv1_add
I1008 15:54:02.732937 18065 net.cpp:124] Setting up conv1_add
I1008 15:54:02.732940 18065 net.cpp:131] Top shape: 1 10 10 10 (1000)
I1008 15:54:02.732944 18065 net.cpp:139] Memory required for data: 41728
I1008 15:54:02.732946 18065 layer_factory.hpp:77] Creating layer pool1_MaxPool
I1008 15:54:02.732951 18065 net.cpp:86] Creating Layer pool1_MaxPool
I1008 15:54:02.732954 18065 net.cpp:408] pool1_MaxPool <- conv1_add
I1008 15:54:02.732959 18065 net.cpp:382] pool1_MaxPool -> pool1_MaxPool
I1008 15:54:02.732965 18065 net.cpp:124] Setting up pool1_MaxPool
I1008 15:54:02.732969 18065 net.cpp:131] Top shape: 1 10 5 5 (250)
I1008 15:54:02.732972 18065 net.cpp:139] Memory required for data: 42728
I1008 15:54:02.732975 18065 layer_factory.hpp:77] Creating layer conv2_Conv2D
I1008 15:54:02.732981 18065 net.cpp:86] Creating Layer conv2_Conv2D
I1008 15:54:02.732985 18065 net.cpp:408] conv2_Conv2D <- pool1_MaxPool
I1008 15:54:02.732988 18065 net.cpp:382] conv2_Conv2D -> conv2_Conv2D
I1008 15:54:02.734081 18065 net.cpp:124] Setting up conv2_Conv2D
I1008 15:54:02.734091 18065 net.cpp:131] Top shape: 1 16 3 3 (144)
I1008 15:54:02.734094 18065 net.cpp:139] Memory required for data: 43304
I1008 15:54:02.734099 18065 layer_factory.hpp:77] Creating layer conv2_Relu
I1008 15:54:02.734104 18065 net.cpp:86] Creating Layer conv2_Relu
I1008 15:54:02.734108 18065 net.cpp:408] conv2_Relu <- conv2_Conv2D
I1008 15:54:02.734112 18065 net.cpp:369] conv2_Relu -> conv2_Conv2D (in-place)
I1008 15:54:02.734371 18065 net.cpp:124] Setting up conv2_Relu
I1008 15:54:02.734378 18065 net.cpp:131] Top shape: 1 16 3 3 (144)
I1008 15:54:02.734381 18065 net.cpp:139] Memory required for data: 43880
I1008 15:54:02.734385 18065 layer_factory.hpp:77] Creating layer conv2_Conv2D_conv2_Relu_0_split
I1008 15:54:02.734390 18065 net.cpp:86] Creating Layer conv2_Conv2D_conv2_Relu_0_split
I1008 15:54:02.734392 18065 net.cpp:408] conv2_Conv2D_conv2_Relu_0_split <- conv2_Conv2D
I1008 15:54:02.734397 18065 net.cpp:382] conv2_Conv2D_conv2_Relu_0_split -> conv2_Conv2D_conv2_Relu_0_split_0
I1008 15:54:02.734402 18065 net.cpp:382] conv2_Conv2D_conv2_Relu_0_split -> conv2_Conv2D_conv2_Relu_0_split_1
I1008 15:54:02.734407 18065 net.cpp:382] conv2_Conv2D_conv2_Relu_0_split -> conv2_Conv2D_conv2_Relu_0_split_2
I1008 15:54:02.734413 18065 net.cpp:124] Setting up conv2_Conv2D_conv2_Relu_0_split
I1008 15:54:02.734417 18065 net.cpp:131] Top shape: 1 16 3 3 (144)
I1008 15:54:02.734421 18065 net.cpp:131] Top shape: 1 16 3 3 (144)
I1008 15:54:02.734424 18065 net.cpp:131] Top shape: 1 16 3 3 (144)
I1008 15:54:02.734427 18065 net.cpp:139] Memory required for data: 45608
I1008 15:54:02.734431 18065 layer_factory.hpp:77] Creating layer conv2_Abs
I1008 15:54:02.734436 18065 net.cpp:86] Creating Layer conv2_Abs
I1008 15:54:02.734438 18065 net.cpp:408] conv2_Abs <- conv2_Conv2D_conv2_Relu_0_split_0
I1008 15:54:02.734442 18065 net.cpp:382] conv2_Abs -> conv2_Abs
I1008 15:54:02.734447 18065 net.cpp:124] Setting up conv2_Abs
I1008 15:54:02.734450 18065 net.cpp:131] Top shape: 1 16 3 3 (144)
I1008 15:54:02.734453 18065 net.cpp:139] Memory required for data: 46184
I1008 15:54:02.734457 18065 layer_factory.hpp:77] Creating layer conv2_sub
I1008 15:54:02.734462 18065 net.cpp:86] Creating Layer conv2_sub
I1008 15:54:02.734465 18065 net.cpp:408] conv2_sub <- conv2_Conv2D_conv2_Relu_0_split_1
I1008 15:54:02.734468 18065 net.cpp:408] conv2_sub <- conv2_Abs
I1008 15:54:02.734472 18065 net.cpp:382] conv2_sub -> conv2_sub
I1008 15:54:02.734477 18065 net.cpp:124] Setting up conv2_sub
I1008 15:54:02.734481 18065 net.cpp:131] Top shape: 1 16 3 3 (144)
I1008 15:54:02.734484 18065 net.cpp:139] Memory required for data: 46760
I1008 15:54:02.734488 18065 layer_factory.hpp:77] Creating layer conv2_mul
I1008 15:54:02.734491 18065 net.cpp:86] Creating Layer conv2_mul
I1008 15:54:02.734495 18065 net.cpp:408] conv2_mul <- conv2_sub
I1008 15:54:02.734498 18065 net.cpp:369] conv2_mul -> conv2_sub (in-place)
I1008 15:54:02.734506 18065 net.cpp:124] Setting up conv2_mul
I1008 15:54:02.734510 18065 net.cpp:131] Top shape: 1 16 3 3 (144)
I1008 15:54:02.734513 18065 net.cpp:139] Memory required for data: 47336
I1008 15:54:02.734517 18065 layer_factory.hpp:77] Creating layer conv2_mul_1
I1008 15:54:02.734521 18065 net.cpp:86] Creating Layer conv2_mul_1
I1008 15:54:02.734525 18065 net.cpp:408] conv2_mul_1 <- conv2_sub
I1008 15:54:02.734529 18065 net.cpp:369] conv2_mul_1 -> conv2_sub (in-place)
I1008 15:54:02.734534 18065 layer_factory.hpp:77] Creating layer conv2_mul_1
I1008 15:54:02.734542 18065 net.cpp:124] Setting up conv2_mul_1
I1008 15:54:02.734546 18065 net.cpp:131] Top shape: 1 16 3 3 (144)
I1008 15:54:02.734549 18065 net.cpp:139] Memory required for data: 47912
I1008 15:54:02.734555 18065 layer_factory.hpp:77] Creating layer conv2_add
I1008 15:54:02.734558 18065 net.cpp:86] Creating Layer conv2_add
I1008 15:54:02.734562 18065 net.cpp:408] conv2_add <- conv2_Conv2D_conv2_Relu_0_split_2
I1008 15:54:02.734566 18065 net.cpp:408] conv2_add <- conv2_sub
I1008 15:54:02.734570 18065 net.cpp:382] conv2_add -> conv2_add
I1008 15:54:02.734575 18065 net.cpp:124] Setting up conv2_add
I1008 15:54:02.734578 18065 net.cpp:131] Top shape: 1 16 3 3 (144)
I1008 15:54:02.734581 18065 net.cpp:139] Memory required for data: 48488
I1008 15:54:02.734585 18065 layer_factory.hpp:77] Creating layer conv3_Conv2D
I1008 15:54:02.734589 18065 net.cpp:86] Creating Layer conv3_Conv2D
I1008 15:54:02.734592 18065 net.cpp:408] conv3_Conv2D <- conv2_add
I1008 15:54:02.734596 18065 net.cpp:382] conv3_Conv2D -> conv3_Conv2D
I1008 15:54:02.735666 18065 net.cpp:124] Setting up conv3_Conv2D
I1008 15:54:02.735675 18065 net.cpp:131] Top shape: 1 32 1 1 (32)
I1008 15:54:02.735679 18065 net.cpp:139] Memory required for data: 48616
I1008 15:54:02.735684 18065 layer_factory.hpp:77] Creating layer conv3_Relu
I1008 15:54:02.735689 18065 net.cpp:86] Creating Layer conv3_Relu
I1008 15:54:02.735692 18065 net.cpp:408] conv3_Relu <- conv3_Conv2D
I1008 15:54:02.735697 18065 net.cpp:369] conv3_Relu -> conv3_Conv2D (in-place)
I1008 15:54:02.736224 18065 net.cpp:124] Setting up conv3_Relu
I1008 15:54:02.736233 18065 net.cpp:131] Top shape: 1 32 1 1 (32)
I1008 15:54:02.736237 18065 net.cpp:139] Memory required for data: 48744
I1008 15:54:02.736239 18065 layer_factory.hpp:77] Creating layer conv3_Conv2D_conv3_Relu_0_split
I1008 15:54:02.736245 18065 net.cpp:86] Creating Layer conv3_Conv2D_conv3_Relu_0_split
I1008 15:54:02.736249 18065 net.cpp:408] conv3_Conv2D_conv3_Relu_0_split <- conv3_Conv2D
I1008 15:54:02.736255 18065 net.cpp:382] conv3_Conv2D_conv3_Relu_0_split -> conv3_Conv2D_conv3_Relu_0_split_0
I1008 15:54:02.736261 18065 net.cpp:382] conv3_Conv2D_conv3_Relu_0_split -> conv3_Conv2D_conv3_Relu_0_split_1
I1008 15:54:02.736266 18065 net.cpp:382] conv3_Conv2D_conv3_Relu_0_split -> conv3_Conv2D_conv3_Relu_0_split_2
I1008 15:54:02.736272 18065 net.cpp:124] Setting up conv3_Conv2D_conv3_Relu_0_split
I1008 15:54:02.736275 18065 net.cpp:131] Top shape: 1 32 1 1 (32)
I1008 15:54:02.736279 18065 net.cpp:131] Top shape: 1 32 1 1 (32)
I1008 15:54:02.736284 18065 net.cpp:131] Top shape: 1 32 1 1 (32)
I1008 15:54:02.736285 18065 net.cpp:139] Memory required for data: 49128
I1008 15:54:02.736289 18065 layer_factory.hpp:77] Creating layer conv3_Abs
I1008 15:54:02.736292 18065 net.cpp:86] Creating Layer conv3_Abs
I1008 15:54:02.736295 18065 net.cpp:408] conv3_Abs <- conv3_Conv2D_conv3_Relu_0_split_0
I1008 15:54:02.736300 18065 net.cpp:382] conv3_Abs -> conv3_Abs
I1008 15:54:02.736305 18065 net.cpp:124] Setting up conv3_Abs
I1008 15:54:02.736310 18065 net.cpp:131] Top shape: 1 32 1 1 (32)
I1008 15:54:02.736312 18065 net.cpp:139] Memory required for data: 49256
I1008 15:54:02.736315 18065 layer_factory.hpp:77] Creating layer conv3_sub
I1008 15:54:02.736321 18065 net.cpp:86] Creating Layer conv3_sub
I1008 15:54:02.736325 18065 net.cpp:408] conv3_sub <- conv3_Conv2D_conv3_Relu_0_split_1
I1008 15:54:02.736328 18065 net.cpp:408] conv3_sub <- conv3_Abs
I1008 15:54:02.736333 18065 net.cpp:382] conv3_sub -> conv3_sub
I1008 15:54:02.736337 18065 net.cpp:124] Setting up conv3_sub
I1008 15:54:02.736341 18065 net.cpp:131] Top shape: 1 32 1 1 (32)
I1008 15:54:02.736344 18065 net.cpp:139] Memory required for data: 49384
I1008 15:54:02.736347 18065 layer_factory.hpp:77] Creating layer conv3_mul
I1008 15:54:02.736352 18065 net.cpp:86] Creating Layer conv3_mul
I1008 15:54:02.736356 18065 net.cpp:408] conv3_mul <- conv3_sub
I1008 15:54:02.736359 18065 net.cpp:369] conv3_mul -> conv3_sub (in-place)
I1008 15:54:02.736367 18065 net.cpp:124] Setting up conv3_mul
I1008 15:54:02.736372 18065 net.cpp:131] Top shape: 1 32 1 1 (32)
I1008 15:54:02.736376 18065 net.cpp:139] Memory required for data: 49512
I1008 15:54:02.736379 18065 layer_factory.hpp:77] Creating layer conv3_mul_1
I1008 15:54:02.736383 18065 net.cpp:86] Creating Layer conv3_mul_1
I1008 15:54:02.736387 18065 net.cpp:408] conv3_mul_1 <- conv3_sub
I1008 15:54:02.736392 18065 net.cpp:369] conv3_mul_1 -> conv3_sub (in-place)
I1008 15:54:02.736397 18065 layer_factory.hpp:77] Creating layer conv3_mul_1
I1008 15:54:02.736407 18065 net.cpp:124] Setting up conv3_mul_1
I1008 15:54:02.736410 18065 net.cpp:131] Top shape: 1 32 1 1 (32)
I1008 15:54:02.736413 18065 net.cpp:139] Memory required for data: 49640
I1008 15:54:02.736418 18065 layer_factory.hpp:77] Creating layer conv3_add
I1008 15:54:02.736423 18065 net.cpp:86] Creating Layer conv3_add
I1008 15:54:02.736426 18065 net.cpp:408] conv3_add <- conv3_Conv2D_conv3_Relu_0_split_2
I1008 15:54:02.736430 18065 net.cpp:408] conv3_add <- conv3_sub
I1008 15:54:02.736434 18065 net.cpp:382] conv3_add -> conv3_add
I1008 15:54:02.736438 18065 net.cpp:124] Setting up conv3_add
I1008 15:54:02.736443 18065 net.cpp:131] Top shape: 1 32 1 1 (32)
I1008 15:54:02.736446 18065 net.cpp:139] Memory required for data: 49768
I1008 15:54:02.736449 18065 layer_factory.hpp:77] Creating layer conv4_1_Conv2D
I1008 15:54:02.736454 18065 net.cpp:86] Creating Layer conv4_1_Conv2D
I1008 15:54:02.736457 18065 net.cpp:408] conv4_1_Conv2D <- conv3_add
I1008 15:54:02.736462 18065 net.cpp:382] conv4_1_Conv2D -> conv4_1_Conv2D
I1008 15:54:02.737721 18065 net.cpp:124] Setting up conv4_1_Conv2D
I1008 15:54:02.737730 18065 net.cpp:131] Top shape: 1 2 1 1 (2)
I1008 15:54:02.737733 18065 net.cpp:139] Memory required for data: 49776
I1008 15:54:02.737741 18065 layer_factory.hpp:77] Creating layer conv4_1_Reshape
I1008 15:54:02.737747 18065 net.cpp:86] Creating Layer conv4_1_Reshape
I1008 15:54:02.737751 18065 net.cpp:408] conv4_1_Reshape <- conv4_1_Conv2D
I1008 15:54:02.737756 18065 net.cpp:382] conv4_1_Reshape -> conv4_1_Reshape
I1008 15:54:02.737762 18065 net.cpp:124] Setting up conv4_1_Reshape
I1008 15:54:02.737766 18065 net.cpp:131] Top shape: 1 2 (2)
I1008 15:54:02.737769 18065 net.cpp:139] Memory required for data: 49784
I1008 15:54:02.737772 18065 layer_factory.hpp:77] Creating layer conv4_1_Softmax
I1008 15:54:02.737778 18065 net.cpp:86] Creating Layer conv4_1_Softmax
I1008 15:54:02.737782 18065 net.cpp:408] conv4_1_Softmax <- conv4_1_Reshape
I1008 15:54:02.737785 18065 net.cpp:382] conv4_1_Softmax -> conv4_1_Softmax
I1008 15:54:02.738102 18065 net.cpp:124] Setting up conv4_1_Softmax
I1008 15:54:02.738109 18065 net.cpp:131] Top shape: 1 2 (2)
I1008 15:54:02.738112 18065 net.cpp:139] Memory required for data: 49792
I1008 15:54:02.738116 18065 layer_factory.hpp:77] Creating layer conv4_1_Reshape_1
I1008 15:54:02.738121 18065 net.cpp:86] Creating Layer conv4_1_Reshape_1
I1008 15:54:02.738123 18065 net.cpp:408] conv4_1_Reshape_1 <- conv4_1_Softmax
I1008 15:54:02.738128 18065 net.cpp:382] conv4_1_Reshape_1 -> conv4_1_Reshape_1
I1008 15:54:02.738133 18065 net.cpp:124] Setting up conv4_1_Reshape_1
I1008 15:54:02.738137 18065 net.cpp:131] Top shape: 1 2 (2)
I1008 15:54:02.738139 18065 net.cpp:139] Memory required for data: 49800
I1008 15:54:02.738142 18065 layer_factory.hpp:77] Creating layer cls_prob
I1008 15:54:02.738147 18065 net.cpp:86] Creating Layer cls_prob
I1008 15:54:02.738150 18065 net.cpp:408] cls_prob <- conv4_1_Reshape_1
I1008 15:54:02.738155 18065 net.cpp:382] cls_prob -> cls_prob
F1008 15:54:02.738162 18065 reshape_layer.cpp:87] Check failed: top[0]->count() == bottom[0]->count() (768 vs. 2) output count must match input count
*** Check failure stack trace: ***
./run.sh: line 3: 18065 Aborted                 (core dumped) mmconvert -sf tensorflow -in model-30.meta -iw model-30 --dstNodeName cls_prob -df caffe -om tf_pnet

