array=($(find $CUSTOM_SCRIPT_PATH/common -type f))

for obj in "${array[@]}"; do
  if [ $obj = "." ]; then
    continue
  fi
  . $obj
done

array=($(find $CUSTOM_SCRIPT_PATH/custom -type f))

for obj in "${array[@]}"; do
  if [ $obj = "." ]; then
    continue
  fi
  . $obj
done

