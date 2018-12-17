#!/bin/bash
echo "Usage: filesection <FILE> <STARTBYTE> <ENDBYTE>"
in_file=$1
start=$2
end=$3
block_size=4096

copy_size=$(( $end - $start ))

dd if="$in_file" iflag=skip_bytes,count_bytes,fullblock bs="$block_size" \
  skip="$start" count="$copy_size"

