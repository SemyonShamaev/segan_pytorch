#!/bin/bash


python -u train.py --save_path D:/whispered/ckpt_wsegan_misalign \
  --d_pretrained_ckpt D:/whispered/ckpt_wsegan_misalign/weights_EOE_D-Discriminator-2220.ckpt \
	--g_pretrained_ckpt D:/whispered/ckpt_wsegan_misalign/weights_EOE_G-Generator-2220.ckpt \
	--clean_trainset data_veu4/silent/clean_trainset_M4 \
	--noisy_trainset data_veu4/silent/whisper_trainset_M4 \
	--cache_dir data_silent_tmp --no_train_gen --batch_size 75  \
	--epoch 80  \
	--wsegan --gnorm_type snorm --dnorm_type snorm --opt adam \
	--data_stride 0.05 --misalign_pair
