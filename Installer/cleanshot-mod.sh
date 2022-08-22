#!/bin/bash

# Khởi tạo biến
pathSoft=/usr/local/Caskroom/cleanshot-mod
ver=3.1.1

# tạo mảng gồm 2 phần tử 
declare -a arr=("prod.legit.maketheweb.pl" "updates.getcleanshot.com")

# Vòng lặp kiểm tra file host
for i in "${arr[@]}"
do
    if grep -Fq "$i" /etc/hosts
    then
        echo "Host $i đã tồn tại"
    else
        echo "Host $i chưa tồn tại"
        echo "127.0.0.1 $i" | sudo tee -a /etc/hosts
        echo "==> Đã patch"
    fi
done

# Chuyển app vô application
mv $pathSoft/$ver/CleanShot\ X.app /Applications/CleanShot\ X.app
rm -rf $pathSoft/$ver/CleanShot\ X.app
ln -s /Applications/CleanShot\ X.app $pathSoft/$ver/CleanShot\ X.app

# Chuyển file patch
cp -rf $pathSoft/$ver/pl.maketheweb.cleanshotx.plist ~/Library/Preferences/pl.maketheweb.cleanshotx.plist


echo "Lưu ý: Không được update CleanShotX lên bản mới nhất"