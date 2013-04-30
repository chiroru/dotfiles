
setEnvironment() {

CONFIG_FILE=$1

while read line
do
  temp_section=`echo ${line} | sed -n 's/^\[\(.*\)\]\$/\1/p'`
  if [ ! -z ${temp_section} ]; then
    section=${temp_section}
  fi
  t=`echo ${line} | sed -n '/^[^\[]/p'`
  if [ ! -z ${t} ]; then
    key=`echo $t | cut -d "=" -f1`
    value=`echo $t | cut -d "=" -f2`
    eval "${section}_${key}=${value}"
    export "${section}_${key}"
  fi
  done < ${CONFIG_FILE}

}
