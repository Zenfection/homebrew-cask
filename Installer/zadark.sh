#!/bin/bash

# Khởi tạo biến
pathSoft=/usr/local/Caskroom/zadark
ver=4.11

# Chuyển app vô application
rm -rf $pathSoft/$ver/ZaDark_4.11.pkg
ln -s /Applications/ZaDark $pathSoft/$ver/ZaDark.app

echo "Sử dụng tool tại Applications"