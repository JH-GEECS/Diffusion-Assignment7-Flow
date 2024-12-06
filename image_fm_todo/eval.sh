CKPT_PATH="/data2/code/Diffusion-Assignment7-Flow/image_fm_todo/results/cfg_fm-12-06-032959/last.ckpt"
DIR_TO_SAVE_IMGS="./results/sampling/cfg_fm-12-06-032959"
GT_IMG_DIR="/data2/code/Diffusion-Assignment7-Flow/image_fm_todo/data/afhq/eval"
GEN_IMG_DIR=$DIR_TO_SAVE_IMGS

echo "make dir ${DIR_TO_SAVE_IMGS}"
mkdir -p $DIR_TO_SAVE_IMGS

echo "sampling start"
python ./sampling.py --ckpt_path $CKPT_PATH --save_dir $DIR_TO_SAVE_IMGS --use_cfg

echo "measure fid"
python ./fid/measure_fid.py $GT_IMG_DIR $GEN_IMG_DIR >> sampling