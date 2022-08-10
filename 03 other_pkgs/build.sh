#https://pinyin.sogou.com/linux/help.php
echo "sougouPingYing ... "
sudo apt install -y fcitx
sudo apt-get -y -f install
sudo dpkg -i  sogoupinyin_2.4.0.3469_amd64.deb

#if encounter any trouble , enter "sudo apt-get -f install"   
#官网 https://www.wps.com/download/
echo "wps ... "
sudo dpkg -i wps-office_11.1.0.10702_amd64.deb

echo "electron-ssr ... "
sudo apt install -y libcanberra-gtk-module libcanberra-gtk3-module gconf2 gconf-service libappindicator1
sudo apt-get install -y libssl-dev
sudo apt-get install -y  libsodium-dev
sudo dpkg -i electron-ssr-0.2.6.deb
#终端输入 electron-ssrubuntu启动ssr，配置节点信息
#添加节点信息，把系统的网络代理改为自动,自动不行的话，就需要手动配置，将前两个http 配置为127.0.0.1 12333

echo "google-chrome.."
sudo dpkg -i google-chrome-stable_current_amd64.deb

#https://code.visualstudio.com/
echo "vscode.."
sudo dpkg -i code_1.62.1-1636111026_amd64.deb
#vscode 同步 https://www.php.cn/tool/vscode/489147.html

echo "typora.."
sudo dpkg -i typora_0.11.18_amd64.deb

#https://im.qq.com/linuxqq/download.html
echo "QQ.."
sudo dpkg -i linuxqq_2.0.0-b2-1089_amd64.deb

#https://www.xmind.cn/download/ 
echo "xmind.."
sudo dpkg -i XMind-for-Linux-amd-64bit-11.1.2-202111151820.deb

#微信  download： https://ubuntukylin.com/applications/119-cn.html
echo "微信.."
sudo apt-get install -f -y ./ukylin-wine_70.6.3.25_amd64.deb
sudo apt-get install -f -y ./ukylin-wechat_3.0.0_amd64.deb

