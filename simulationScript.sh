#!/bin/bash

exe=./wcp

epsilons=(10)
nprocs=(5)
lpr=(0.05)
deltas=(5)
#alphas=(0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9)
alphas=(0.03)
interval=(10)
hundred=100
truncate -s 0 "wcp1"; 
truncate -s 0 "wcp2"; 
truncate -s 0 "wcp_compare"; 
truncate -s 0 "wcp_multipleruns"; 

make clean
make

for e in "${epsilons[@]}"
#for e in {1..100000..5}
do
  for p in "${nprocs[@]}"
  #for p in {1..50..1}
  do
    for l in "${lpr[@]}"
    do
        for a in "${alphas[@]}"
	#for a in {1..100..1}
        do
            for d in "${deltas[@]}"
            do
		for v in "${interval[@]}"
		#for v in {1..100..1}
		do
			#${exe} -e${e} -p${p} -l${l} -d${d} -a$(echo "scale=2;$a/$hundred"|bc) -u1000 -mRandom -b20 -r1 -tCompleteGraph -v${v}
			${exe} -e${e} -p${p} -l${l} -d${d} -a${a} -u10000 -mRandom -b20 -r1 -tCompleteGraph -v${v}
			echo
			echo "---------------------"
			echo
		done
            done
         done
    done
  
  done  

done

# cat ./debug/wcp_out | grep "processes" > ./debug/text1.txt
# awk -F : '{print $2}' ./debug/text1.txt > ./debug/text2.txt
# sort -b -g ./debug/text2.txt > ./debug/text3.txt


