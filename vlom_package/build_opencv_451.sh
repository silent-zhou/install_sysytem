#先进入opencv官网，下载source文件 https://opencv.org/releases/
#下载opencv-contrib  https://github.com/opencv/opencv_contrib/tree/4.5.1

#该过程如果你的电脑用了vpn翻墙，最好关掉，否则会download很久，又下载不下来，关掉翻墙，可以快速跳过
echo"opencv4.5.1.."
unzip opencv.zip
unzip opencv_contrib-4.5.1.zip
mkdir opencv_451_src
cd  opencv-4.5.1/
mkdir build && cd build
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install build-essential cmake unzip pkg-config
sudo apt install -y python3-opencv

# Install the required dependencies
sudo apt install -y build-essential cmake git pkg-config libgtk-3-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev     libxvidcore-dev libx264-dev libjpeg-dev libpng-dev libtiff-dev  gfortran openexr libatlas-base-dev python3-dev python3-numpy libtbb2 libtbb-dev libdc1394-22-dev

cmake -D CMAKE_BUILD_TYPE=RELEASE -D OPENCV_GENERATE_PKGCONFIG=ON -D OPENCV_EXTRA_MODULES_PATH=/home/hzhou/Documents/install_system/vlom_package/opencv_contrib-4.5.1/modules -D INSTALL_C_EXAMPLES=OFF  -D INSTALL_PYTHON_EXAMPLES=ON  -D OPENCV_GENERATE_PKGCONFIG=YES -D CMAKE_INSTALL_PREFIX=/home/hzhou/Documents/install_system/vlom_package/opencv_451_src -D OPENCV_ENABLE_NONFREE=ON ..

make -j4

sudo make install
sudo ldconfig

#不许要配置环境变量

#CMakeLists中加入 
#list(APPEND CMAKE_PREFIX_PATH "/home/hzhou/Documents/install_system/vlom_package/opencv_451_src") 
#find_package(OpenCV 4.5.1 REQUIRED)



# ----------------------------------------------
#错误1
  #fatal error: boostdesc_bgm.i: No such file or directory

  #https://blog.csdn.net/u011736771/article/details/85960300
  #https://github.com/opencv/opencv_contrib/issues/1301#issuecomment-447181426
#错误2
  #fatal error: features2d/test/test_detectors_regression.impl.hpp: No such file or directory
  #将opencv / modules / features2d复制，然后粘贴到build目录中来解决该问题
#错误3
   #fatal error: opencv2/xfeatures2d.hpp: No such file or directory
   # #include <opencv2/xfeatures2d.hpp>
#错误3
#遇到该错误，修改 /home/light/opencv3/opencv_contrib3/modules/sfm文件夹里面里的 cmake文件，添加 include 语句 INCLUDE_DIRECTORIES("/home/light/opencv3/opencv_contrib3/modules/xfeatures2d/include")

#错误3：fatal error: opencv4/opencv2/opencv.hpp: No such file or directory  #include "opencv4/opencv2/opencv.hpp"
#建立一个软连接   sudo ln -s /home/hzhou/Documents/install_system/vlom_package/opencv_451_src/include/opencv4  /usr/local/include/






