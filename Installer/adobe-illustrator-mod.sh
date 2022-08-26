#!/bin/bash

rootPath=$(pwd)
pathSoft=/usr/local/Caskroom/adobe-illustrator-mod
ver=26.4.1

#TODO tải file cài đặt Adobe Illustrator
echo "Tải file cài đặt"
#* tải file
wget https://github.com/Zenfection/macos/releases/download/1.0/Adobe.Illustrator_$ver.zip 
#* di chuyển file vào thư mục cài đặt
mv Adobe.Illustrator_$ver.zip $pathSoft/$ver 
#* giải nén file
unzip -q /usr/local/Caskroom/adobe-illustrator-mod/$ver/CleanShot.X_3.1.1.zip -d /usr/local/Caskroom/adobe-illustrator-mod/$ver/    
#* Xoá các file không cần thiết
rm $pathSoft/$ver/Adobe.Illustrator_$ver.zip
rm $pathSoft/$ver/__MACOSX

# cài đặt antiCC
echo "Cài đặt antiCC"
installer -pkg $pathSoft/$ver/AntiCC_1.7.pkg  -target /
echo "==> Thành Công"

# cài đặt Adobe Illustrator (di chuyển thư mục)
echo "Cài đặt Adobe Illustrator 2022"
mv $pathSoft/$ver/Adobe\ Illustrator\ 2022 /Applications/Adobe\ Illustrator\ 2022
rm -rf $pathSoft/$ver/Adobe\ Illustrator\ 2022
ln -s /Applications/Adobe\ Illustrator\ 2022 $pathSoft/$ver/Adobe\ Illustrator\ 2022
echo "==> Thành Công"

# Patch Adobe Illustrator 2022
echo "Patch Adobe Illustrator 2022"
installer -pkg $pathSoft/$ver/Adobe.Illustrator_26.4.1/Illustrator\ 26.4.1\ U2B\ PATCH\ \[RiD\].pkg  -target /
echo "==> Thành Công"





