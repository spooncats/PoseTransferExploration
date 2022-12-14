# Market1501
python train.py --dataroot ./market_data/ --name market_PATN --model PATN --lambda_GAN 5 --lambda_A 10  --lambda_B 10 --dataset_mode keypoint --no_lsgan --n_layers 3 --norm batch --batchSize 32 --resize_or_crop no --gpu_ids 0 --BP_input_nc 18 --no_flip --which_model_netG PATN --niter 500 --niter_decay 200 --checkpoints_dir ./checkpoints --pairLst ./market_data/market-pairs-train.csv --L1_type l1_plus_perL1 --n_layers_D 3 --with_D_PP 1 --with_D_PB 1  --display_id 0

# DeepFashion
python train.py --dataroot ./fashion_data/ --name fashion_PATN --model PATN --lambda_GAN 5 --lambda_A 1 --lambda_B 1 --dataset_mode keypoint --n_layers 3 --norm instance --batchSize 7 --pool_size 0 --resize_or_crop no --gpu_ids 0 --BP_input_nc 18 --no_flip --which_model_netG PATN --niter 500 --niter_decay 200 --checkpoints_dir ./checkpoints --pairLst ./fashion_data/fasion-resize-pairs-train.csv --L1_type l1_plus_perL1 --n_layers_D 3 --with_D_PP 1 --with_D_PB 1  --display_id 0


# DeepFashion PATN_Fine
python train.py --dataroot ./fashion_data/ --name fashion_PATN_Fine --model PATN_Fine --lambda_GAN 5 --lambda_A 1 --lambda_B 1 --lambda_style 10 --dataset_mode key_segments --n_layers 3 --norm instance --batchSize 4 --pool_size 0 --resize_or_crop no --gpu_ids 0 --BP_input_nc 18 --no_flip --which_model_netG PATN_Fine --niter 500 --niter_decay 200 --checkpoints_dir ./checkpoints --pairLst ./fashion_data/fasion-resize-pairs-train.csv --L1_type l1_plus_seperate_segments_style --which_model_netD resnet_in --n_layers_D 3 --with_D_PP 1 --with_D_PB 1  --display_id 0 --no_lsgan