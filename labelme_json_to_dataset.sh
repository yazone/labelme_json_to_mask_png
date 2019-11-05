SAVED_DIR='temp'
JSON_DIR=`ls YOUR_JSON_DIR/*.json` # all json files

rm -rf ${SAVED_DIR}
mkdir ${SAVED_DIR}
mkdir ${SAVED_DIR}/image
mkdir ${SAVED_DIR}/label

for JSON_FULLPATH in $JSON_DIR
do
    FILENAME=${JSON_FULLPATH##*/}
    FILENAME=${FILENAME%.*}
    echo 'process JSON file：'${JSON_FULLPATH}
    
    python json_to_dataset.py -o ${SAVED_DIR}/inter ${JSON_FULLPATH} -n label_names.txt
    cp ${SAVED_DIR}/inter/img.png ${SAVED_DIR}/image/${FILENAME}.png
    cp ${SAVED_DIR}/inter/label.png ${SAVED_DIR}/label/${FILENAME}.png
    rm -rf ${SAVED_DIR}/inter
done 

