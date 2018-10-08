#!/bin/bash

mmconvert -sf tensorflow -in model-22.meta -iw model-22 --dstNodeName Reshape_16 sub_4 sub_5 -df caffe -om tf_rnet

#mmconvert -sf tensorflow -in model-22.meta -iw model-22 --dstNodeName cls_fc bbox_fc landmark_fc -df caffe -om tf_rnet


