cp $1 ./tmp.fex
sed -i "s/\(\[dram\)_para\(\]\)/\1\2/g" ./tmp.fex
sed -i "s/\(\[nand[0-9]\)_para\(\]\)/\1\2/g" ./tmp.fex
./dtc/dtc -O dts -o ./o.dts				\
		-b 0							\
		-i ./dts/						\
		-F ./tmp.fex					\
		-d ./dts/.sun8iw6p1-soc.dtb.d.dtc.tmp ./dts/.sun8iw6p1-soc.dtb.dts.tmp
ret=$?
rm ./tmp.fex
echo $ret
