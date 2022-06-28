#1/usr/bin/bash

git clone -b streamlit https://github.com/nirbarazida/YOLOv6.git
cd YOLOv6
pip install -r requirements.txt
dvc pull -r origin
