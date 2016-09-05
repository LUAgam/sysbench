  $ commands=$(sysbench help | grep 'Commands:' | cut -d ' ' -f 2-)
  $ for cmd in $commands; do
  > if [ ! -r ${SBTEST_ROOTDIR}/${cmd}.t ]
  > then
  >   echo "Cannot find test(s) for 'sysbench $cmd'!"
  >   exit 1
  > fi
  > done
