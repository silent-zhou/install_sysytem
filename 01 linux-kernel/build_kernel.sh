cd 5.9
sudo dpkg -i *.deb

#联网
sudo apt-get update  # (更新源) 
sudo apt-get upgrade  # (更新已安装的包)
sudo apt-get install -y cmake
sudo apt-get install -y build-essensial

tar -zxvf linux-firmware-20211027.tar.gz
cd linux-firmware-20211027
mkdir build && cd build
cmake ..
make
sudo make install

#重启电脑
