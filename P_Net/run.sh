#!/bin/bash

mmconvert -sf tensorflow -in model-30.meta -iw model-30 --dstNodeName cls_prob -df caffe -om tf_pnet

#mmconvert -sf tensorflow -in model-30.meta -iw model-30 --dstNodeName cls_prob bbox_pred landmark_pred -df caffe -om tf_pnet


