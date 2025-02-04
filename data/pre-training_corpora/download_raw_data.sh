# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.
#

gdown --fuzzy "https://drive.google.com/file/d/1iy0x3MFkX3OLC080VlgGANchfCjAhbRy/view?usp=sharing" -O dialog_datasets.zip
unzip dialog_datasets.zip
mv dialog_datasets raw_data
mkdir -p processed_data
rm dialog_datasets.zip
rm -rf __MACOSX