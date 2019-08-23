**Jupyter Notebook** 

- `git clone` repo
- `sudo chmod -R 777 *` from root
- Reproduce results by running the deep_learning.ipynb in drone/transfer.

**Requirments**

- `!pip install cython`
- `!pip install nvidia-ml-py3`
- `!pip install -U -r requirements.txt`

**Training**

**Start Training:** `!sudo python3 train.py --cfg cfg/plane-drone.cfg --epochs 300 --batch-size 20 --data data/plane_drone_train_val.data && mv results.txt results_plane_drone_b20_e300.txt` Each epoch trains on 600 images from the train airplane and drone sets. Validation images are 150 for each class.

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

- `!sudo python3 test.py --data data/plane_drone_train_val.data --cfg cfg/plane-drone.cfg --weights weights/best.pt --img-size 416 --batch-size 20`

- `Namespace(batch_size=30, cfg='cfg/plane-drone.cfg', conf_thres=0.001, data='data/plane_drone_train_val.data', img_size=416, iou_thres=0.5, nms_thres=0.5, save_json=False, weights='weights/best.pt')`

**Inference**
- run`!python3 detect.py`

- default arguments `Namespace(cfg='cfg/plane-drone.cfg', conf_thres=0.3, data='data/plane_drone_train_val.data', fourcc='mp4v', half=False, images='../drone-vs-plane/images/val-test-all', img_size=416, inference_output='inference_output', nms_thres=0.5, webcam=False, weights='weights/best.pt')`

- `weights/yolov3.weights` tests official YOLOv3 weights.
- `weights/last.pt` tests most recent checkpoint.
- `weights/best.pt` tests best checkpoint.
