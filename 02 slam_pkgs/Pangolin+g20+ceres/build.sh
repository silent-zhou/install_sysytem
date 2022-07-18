# 卸载 cat install_manifest.txt | sudo xargs rm

echo "pangolin ... "
unzip Pangolin-master.zip

sudo apt install -y libgl1-mesa-dev
sudo apt install -y libglew-dev
sudo apt install -y cmake
sudo apt install -y libpython2.7-dev
sudo apt install -y python-pip
sudo python -mpip install -y numpy pyopengl Pillow pybind11
sudo apt install -y pkg-config
sudo apt install -y libegl1-mesa-dev libwayland-dev libxkbcommon-dev wayland-protocols
sudo apt install -y ffmpeg libavcodec-dev libavutil-dev libavformat-dev libswscale-dev libavdevice-dev
sudo apt install -y libdc1394-22-dev libraw1394-dev
sudo apt install -y libjpeg-dev libpng-dev libtiff5-dev libopenexr-dev

cd Pangolin-master
mkdir build && cd build
cmake ..
make -j
sudo make install

cd ..
cd ..

echo "g2o ..."
# tar -xvf g2o.tar.gz
# cd g2o
unzip g2o-master.zip
cd g2o-master
mkdir build && cd build
sudo apt-get install -y qt5-qmake qt5-default libqglviewer-dev-qt5 libsuitesparse-dev libcxsparse3 libcholmod3
cmake ..
make -j4
sudo make install

cd ..
cd ..

echo "ceres ... "

sudo rm -f /etc/apt/sources.list
sudo cp sources.list /etc/apt
sudo apt-get update

unzip ceres-solver-master.zip
cd ceres-solver-master
mkdir build && cd build
sudo apt-get install -y liblapack-dev libsuitesparse-dev libcxsparse3.1.2 libgflags-dev libgoogle-glog-dev libgtest-dev

cmake ..
make -j4
sudo make install


