# Jupyter Notebook

Reproduce results by running the deeplearning notebook inside of transfer folder.

# Training

**Start Training:** `sudo python3 train.py --cfg cfg/plane-drone.cfg --epochs 10 --batch-size 60 --data data/plane_drone_val.data && mv results.txt results_plane_drone_img.txt` Each epoch trains on 500 images from the train and validate airplane and drone sets.

**Resume Training:** `python3 train.py --resume` to resume training from `weights/last.pt`.

## Image Augmentation
Augmentation is applied during training by `datasets.py`  

Augmentation | Description
--- | ---
Translation | +/- 10% (vertical and horizontal)
Rotation | +/- 5 degrees
Shear | +/- 2 degrees (vertical and horizontal)
Scale | +/- 10%
Reflection | 50% probability (horizontal-only)
H**S**V Saturation | +/- 50%
HS**V** Intensity | +/- 50%

**Test Set**

- PyTorch weights are in `*.pt` format

'sudo python3 test.py --data data/plane_drone_val.data --cfg cfg/plane-drone.cfg --weights weights/best.pt --img-size 416 --batch-size 60'

'Namespace(batch_size=16, cfg='cfg/plane-drone.cfg', conf_thres=0.001, data='data/plane_drone_val.data', img_size=416, iou_thres=0.5, nms_thres=0.5, save_json=False, weights='weights/best.pt')'

# Inference
for detecting both small and large objects using pre-trained weights
**YOLOv3-SPP: Spatial-full-model- 3 yolo layers:** `python3 detect.py --cfg cfg/yolov3-spp.cfg --weights weights/yolov3-spp.weights`


- `weights/yolov3.weights` tests official YOLOv3 weights.
- `weights/last.pt` tests most recent checkpoint.
- `weights/best.pt` tests best checkpoint.
