#!/usr/bin/env bash
mkdir -p ./out/fullruns/2003_hp \
./out/fullruns/2003_np \
./out/fullruns/2003_td \
./out/fullruns/2004_hp \
./out/fullruns/2004_np \
./out/fullruns/2004_td \
./out/fullruns/MQ2007 \
./out/fullruns/MQ2008 \
# ./out/fullruns/MSLR-WEB10k \
# ./out/fullruns/MSLR-WEB30k \
./out/fullruns/OHSUMED \
./out/average/2003_hp \
./out/average/2003_np \
./out/average/2003_td \
./out/average/2004_hp \
./out/average/2004_np \
./out/average/2004_td \
./out/average/MQ2007 \
./out/average/MQ2008 \
# ./out/average/MSLR-WEB10k \
# ./out/average/MSLR-WEB30k \
./out/average/OHSUMED

source ./venv/bin/activate

python scripts/CIKM2017.py \
--data_folders NP2003 NP2004 HP2003 HP2004 MQ2007 MQ2008 TD2003 TD2004 OHSUMED \
--click_models per nav inf \
--log_folder out/logs \
--average_folder out/average \
--output_folder out/fullruns \
--n_runs 125 \
--n_proc 4 \
--n_impr 10000