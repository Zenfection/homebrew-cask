#!/bin/bash

pathSoft=/usr/local/Caskroom/adobe-illustrator-mod
ver=26.4.1
fileName=Adobe.Illustrator_26.4.1.zip
sha256=98bb5a36a2033a257a08629ca4c38d5ec2497ccad0888a002a07171eb3a2d085

#TODO tải file cài đặt Adobe Illustrator
match=0
function checksha256() {
    if [[ $(shasum -a 256 "$1" | cut -f 1 -d' ') == "$2" ]]; then
        match=1
    else
        match=0
    fi
}

cd ~
#! Kiểm tra file đã tải chưa, nếu chưa thì tải
if [[ -f "~/$fileName" ]]
then
    echo "File đã tải xuống, nhưng chưa di chuyển"
    mv ~/$fileName $pathSoft/$ver

elif [[ -f "$pathSoft/$ver/$fileName" ]]
then
    echo "File đã tải xuống"
else
    echo "Bắt đầu tải file"
    curl -LO https://github.com/Zenfection/macos/releases/download/1.0/$fileName
    mv ~/$fileName $pathSoft/$ver
fi

#TODO Checksum file đã tải
checksha256 $pathSoft/$ver/$fileName $sha256

#* Check file khớp hay chưa
if [[ $match == 1 ]]
then
    echo "File tải đã khớp"
else
    #* Xoá file và tải lại
    echo "File tải không khớp, sẽ xoá file và yêu cầu bạn tải lại"
    brew uninstall --cask adobe-illustrator-mod
    echo "Hãy gõ: brew install adobe-illustrator-mod để tải lại"
    exit 1
fi


#TODO Giải nén và xoá các file không cần thiết
    #* Giải nén file zip
    echo "Đã tải xuống file $fileName"
    unzip -q /$pathSoft/$ver/$fileName -d $pathSoft/$ver 

#TODO cài đặt antiCC
    echo "Cài đặt antiCC"
    installer -pkg $pathSoft/$ver/AntiCC_1.7.pkg  -target /

#TODO cài đặt Adobe Illustrator 
    echo "Cài đặt Adobe Illustrator 2022"
    $pathSoft/$ver/Illustrator\ 26.4.1\ U2B\ INSTALLER\ \[RiD\]/Install.app/Contents/MacOS/Install

#TODO Patch Adobe Illustrator 2022
    echo "Patch Adobe Illustrator 2022"
    installer -pkg $pathSoft/$ver/Illustrator\ 26.4.1\ U2B\ PATCH\ \[RiD\].pkg  -target /

#TODO Xoá các file không cần thiết
    echo "Đã cài thành công Adobe Illustrator 2022"

#* Xoá file không cần thiết
    echo "Xoá các file không cần thiết"
    rm $pathSoft/$ver/$fileName
    rm $pathSoft/$ver/__MACOSX
    rm $pathSoft/$ver/AntiCC_1.7.pkg
    rm $pathSoft/$ver/Illustrator\ 26.4.1\ U2B\ INSTALLER\ \[RiD\]
    rm $pathSoft/$ver/Illustrator\ 26.4.1\ U2B\ PATCH\ \[RiD\].pkg