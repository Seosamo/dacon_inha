export CUDA_VISIBLE_DEVICES=0,1,2,3
export NCCL_P2P_LEVEL=NVL
python3 train.py \
    --model_name 'yanolja/EEVE-Korean-Instruct-10.8B-v1.0' \
    --data_path 'INPUT_PATH/train.csv' \
    --output_path "OUTPUT_PATH/eeve_instruct" \
    --use_multi_gpu True \
    --use_adapters True \
    --batch_size 1 \
    --max_seq_length 2048 \
    --optimizer 'adamw_torch' \
    --epochs 3