#2019.07.26
#https://github.com/dusty-nv/jetson-inference/blob/master/docs/building-repo-2.md
sudo apt-get update
sudo apt-get install git cmake
git clone https://github.com/dusty-nv/jetson-inference
cd jetson-inference
git submodule update --init
sudo apt-get install libpython3-dev python3-numpy
mkdir build
cd build
cmake ../
make
sudo make install
cd jetson-inference/build/aarch64/bin
cd ~/jetson-inference/build/aarch64/bin
./imagenet-console --network=googlenet orange_0.jpg output_0.jpg
sudo ldconfig
./imagenet-console.py --network=googlenet orange_0.jpg output_0.jpg

#https://github.com/dusty-nv/jetson-inference
#install Camera
sudo apt-get install v4l-utils
v4l2-ctl --list-formats-ext

./imagenet-camera
./imagenet-camera.py

#Coding Your Own Image Recognition Program (Python)
cd ~/
mkdir my-recognition-python
cd my-recognition-python
touch my-recognition.py
chmod +x my-recognition.py
wget https://github.com/dusty-nv/jetson-inference/raw/master/data/images/black_bear.jpg 
wget https://github.com/dusty-nv/jetson-inference/raw/master/data/images/brown_bear.jpg
wget https://github.com/dusty-nv/jetson-inference/raw/master/data/images/polar_bear.jpg

mkdir ~/my-recognition
cd ~/my-recognition
touch my-recognition.cpp
touch CMakeLists.txt
wget https://github.com/dusty-nv/jetson-inference/raw/master/data/images/black_bear.jpg 
wget https://github.com/dusty-nv/jetson-inference/raw/master/data/images/brown_bear.jpg
wget https://github.com/dusty-nv/jetson-inference/raw/master/data/images/polar_bear.jpg 


cmake .
make
./my-recognition polar_bear.jpg
./my-recognition brown_bear.jpg
./my-recognition black_bear.jpg


./detectnet-console peds-004.jpg output.jpg
./detectnet-console.py peds-004.jpg output.jpg




