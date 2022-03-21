# PS/2 USB逆変換アダプタ
Description of PS/2USB_CONVERTER. 



## 概要
PS/2 USB逆変換アダプタはUSBキーボードをPS/2化する変換アダプタです。

標準ドライバで動作可能なUSBキーボードをPS/2キーボードとして使用できるように変換します。

[世の中で販売されている変換アダプタ][0]とは変換の向きが逆です。


[市販USBキーボード]<-USB->[PS/2 USB逆変換アダプタ]<-PS/2->[PC,ichigojam]


プログラミング専用こどもパソコンichigojamやサーバマシンなどのPS/2キーボードのみをサポートしている場合にPS/2 USB逆変換アダプタを使用して、USBキーボードをPS/2化します。

<img src="https://raw.githubusercontent.com/meerstern/PS2USB_CONVERTER/master/img/main.JPG" width="360">


## ichigojamで使用する場合
IchigoJam Tの場合はそのままキーボード用のUSB端子へPS/2 USB逆変換アダプタを接続してください。

IchigoJam Uと初代プリント基板の場合は同梱のUSB端子PS/2変換器を介して接続してください。

<img src="https://raw.githubusercontent.com/meerstern/PS2USB_CONVERTER/master/img/ichigo.JPG" width="360">

## 一般的なコンピュータで使用する場合
同梱のUSB端子PS/2変換器を介して接続してください。

<img src="https://raw.githubusercontent.com/meerstern/PS2USB_CONVERTER/master/img/withPS2adp.jpg" width="360">



## 注意
  * USBキーボードをPS/2規格に変換しているため、すべての機器やキー入力を保証することはできません。  
  * すべての機器で対応することを保証できません。  
  * 音量調整やメールボタンといったキーボード固有の機能は使用できません。
  * Logicool製日本語、英語キーボードで動作確認しましたが、すべてのUSBキーボードの動作保証はできません。
  * 日本語、英語以外の言語のキーボードでは入力できないキーがある場合があります。
  * PS/2規格に変換しているため、キーレスポンスやキーリピート等の挙動がUSBで接続する場合と多少異なります。
  * PS/2キーボードとPS/2マウス兼用ポートに接続した場合、不具合が発生する場合はあります。変換ケーブル等でキーボードとマウスを分離して接続してください。
  * USBハブを介した接続には対応していません。直接キーボードのUSBを接続してください。
  * キーレスポンスが遅延する場合は電源投入時リセットに失敗している可能性があります。キーボードのUSBを接続した状態で再度、当該アダプタを抜き差ししてください。

## 告知
  * 使用ICの価格高騰、入手性を考慮し、STM32+VNC2-32ベースからPIC32ベースに移行済(22年3月)
  * 移行前の製品と移行後の製品で基本機能は同じですが、キーレスポンス等異なる場合があります  ご了承ください 
  * 上記写真は移行前につき、移行後の製品は若干基板実装部品等異なります  
  
[0]: http://www.aitendo.com/product/16414 "*0"
