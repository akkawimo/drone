#!/bin/bash
for f in `cat /Users/melchior/Documents/GitHub/transfercv/data/plane_drone_val.txt`;
	do 
	#echo copying ${f};
	#orig=${f//images/labels}
	#orig2=${orig//jpg/txt}
	echo $f
	#mod=${orig//images/labels2}
	#mod2=${mod//jpg/txt}
	cp $f /Users/melchior/Documents/GitHub/drone-vs-plane/images/val-test-all/
done;
