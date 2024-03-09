device=$1
seed_set_idx=$2 
if [ $seed_set_idx = 0 ]; then
    	seed_set=(10 11 12 14 15 16)
elif [ $seed_set_idx = 1 ]; then
    	seed_set=(20 21 22 24 25 26)
elif [ $seed_set_idx = 2 ]; then
    	seed_set=(30 31 32 34 35 36)
else
	seed_set=(40 41 42 44 45 46)
fi

for seed in ${seed_set[@]};
do
    for nz in 50 100 200 400 800 
    do
        python barycenter_exp_tabak.py -nz $nz --lr 1e-3 -rx 1e3  -s $seed -ne 2000 --device $device
    done
done
