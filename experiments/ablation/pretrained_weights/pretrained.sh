python train_multiple_tasks.py \
    --data-dir=datasets/nyu_v2 \
    --data-list-1=datasets/nyu_v2/list/training_seg.txt \
    --data-list-2=datasets/nyu_v2/list/training_normal_mask.txt \
    --restore-from-1=models/vgg_deeplab_lfov/model.ckpt-init-slim \
    --restore-from-2=models/vgg_deeplab_lfov/model.ckpt-init-slim \
    --checkpoint-exclude=fc8,Momentum \
    --network=vgg_16_deeplab_nddr \
    --num-classes-1=40 \
    --num-classes-2=3 \
    --init-method=constant \
    --init-weights=0.9,0.1 \
    --task-1=seg \
    --task-2=normal \
    --ignore-label=255 \
    --learning-rate=0.001 \
    --loss-scale-1=1.0 \
    --loss-scale-2=20.0 \
    --nddr-mult=100.0 \
    --snapshot-dir=save/ablation/weights_initialization/pretrained \
    --max-to-keep=2