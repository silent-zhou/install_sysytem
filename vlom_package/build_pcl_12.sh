#VTK放在依赖项中安装

sudo apt-get install g++
sudo apt-get install cmake cmake-gui
sudo apt-get install doxygen  
sudo apt-get install mpi-default-dev openmpi-bin openmpi-common  
sudo apt-get install libflann1 libflann-dev
sudo apt-get install libeigen3-dev
sudo apt-get install libboost-all-dev
sudo apt-get install libvtk6.3 libvtk6.3-qt libvtk6-dev
sudo apt-get install libqhull*
sudo apt-get install libusb-dev libudev-dev
sudo apt-get install libgtest-dev
sudo apt-get install git-core freeglut3-dev pkg-config
sudo apt-get install build-essential libxmu-dev libxi-dev 
sudo apt-get install libusb-1.0-0-dev graphviz mono-complete
sudo apt-get install qt-sdk openjdk-8-jdk openjdk-8-jre

#缺少cminpack 下载其源码 https://github.com/devernay/cminpack/tree/v1.2.0
unzip cminpack-1.2.0.zip
cd cminpack-1.2.0
mkdir build && cd build
cmake ..
make
sudo make install

cd ../..

#tar –xvf file.tar //解压 tar包
#tar -xzvf file.tar.gz //解压tar.gz
#tar -xjvf file.tar.bz2   //解压 tar.bz2
#tar –xZvf file.tar.Z   //解压tar.Z
#unrar e file.rar //解压rar
#unzip file.zip //解压zip

#https://github.com/PointCloudLibrary/pcl/tree
tar -zxvf pcl-pcl-1.8.1.tar.gz
cd pcl-pcl-1.8.1
mkdir build && cd build
cmake -D CMAKE_BUILD_TYPE=None -D CMAKE_INSTALL_PREFIX=/home/hzhou/Documents/install_system/vlom_package/pcl_1_8_1_src -D BUILD_GPU=ON -D BUILD_apps=ON -D BUILD_examples=ON ..
make -j4
sudo make install

#在CMakeLists中加入
#list(APPEND CMAKE_PREFIX_PATH "/home/hzhou/Documents/install_system/vlom_package/pcl_1_8_1_src") #这样是可以的
#find_package(PCL 1.8.1 REQUIRED)

#安装参考 https://blog.csdn.net/way7486chundan/article/details/110296785



# ----------------------------------------------
#错误1 sqrt、sin、cos改为std::

#错误2：  boost/uuid/sha1.hpp: No such file or directory
#  sudo cp /usr/include/boost/uuid/detail/sha1.hpp /usr/include/boost/uuid/ 
# https://blog.csdn.net/u011736771/article/details/85960300




