sudo apt-get install -y build-essential

echo "eigen3.3.7 ... "
unzip eigen-3.3.7.zip
cd eigen-3.3.7
mkdir build && cd build
cmake ..
sudo make install  
# 链接 sudo ln -s /usr/include/eigen3/Eigen /usr/include/Eigen
#会默认安装3.2版本的eigen
# sudo apt-get install libeigen3-dev

echo " fmt ... "
unzip fmt-master.zip
cd fmt-master
mkdir build && cd build
sudo apt install cmake
sudo apt-get install -y build-essential
cmake ..
make -j
sudo make install

cd ..
cd ..

echo "sophus ... "
unzip Sophus-master.zip
cd Sophus-master
mkdir build && cd build
cmake ..
make -j
sudo make install

