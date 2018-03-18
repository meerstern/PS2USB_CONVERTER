# PS2USB_CONVERTER
Description of PS2USB_CONVERTER. 



## 概要
PS2/USBコンバータはUSBキーボードをPS2化する変換アダプタです。

世の中で販売されている変換アダプタとは変換の向きが逆です。

[市販USBキーボード]<-USB->[PS2/USBコンバータ]<-PS2->[PC,ichigojam]

標準ドライバで動作可能なUSBキーボードをPS2キーボードとして使用できるように変換します。

プログラミング専用こどもパソコンichigojamやサーバマシンなどのPS2キーボードのみをサポートしている場合にPS2/USBコンバータを使用して、USBキーボードをPS2化します。

<img src="https://raw.githubusercontent.com/meerstern/PS2USB_CONVERTER/master/img/main.JPG" width="360">


## ichigojamで使用する場合
IchigoJam Tの場合はそのままキーボード用のUSB端子へPS2/USBコンバータを接続してください。

IchigoJam Uと初代プリント基板の場合は同梱のUSB端子PS2変換器を介して接続してください。

<img src="https://raw.githubusercontent.com/meerstern/PS2USB_CONVERTER/master/img/ichigo.JPG" width="360">

## 一般的なコンピュータで使用する場合
同梱のUSB端子PS2変換器を介して接続してください。

<img src="https://raw.githubusercontent.com/meerstern/PS2USB_CONVERTER/master/img/withPS2adp.jpg" width="360">



## 注意
  * USBキーボードをPS2規格に変換しているため、すべてのキー入力を保証することはできません。
  * 音量調整やメールボタンといったキーボード固有の機能は使用できません。
  * Logicool製日本語、英語キーボードで動作確認しましたが、すべてのUSBキーボードの動作保証はできません。
  * 日本語、英語以外の言語のキーボードでは入力できないキーがある場合があります。
  * PS2規格に変換しているため、キーレスポンスやキーリピート等の挙動がUSBで接続する場合と多少異なります。
  * PS2キーボードとPS2マウス兼用ポートに接続した場合、不具合が発生する場合はあります。変換ケーブル等でキーボードとマウスを分離して接続してください。
  * USBマウスとPS2マウスの変換には対応していません。
