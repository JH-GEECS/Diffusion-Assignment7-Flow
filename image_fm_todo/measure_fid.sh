GT_IMG_DIR="./data/afhq/eval"
GEN_IMG_DIR="./results/sampling/cfg_fm-12-06-032959"

RESULT_DIR="./results"
mkdir -p ${RESULT_DIR}

if [ $# -ne 1 ]; then
    echo "pleasse type eval result file name (e.g., fid)"
fi
FILE_NAME=$1

echo "target image directory: ${GEN_IMG_DIR}"
python ./fid/measure_fid.py $GT_IMG_DIR $GEN_IMG_DIR >> ./$RESULT_DIR/$FILE_NAME.txt

