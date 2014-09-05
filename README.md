#文字コードとその実装

このドキュメントは upLaTeX 用の文書ソースファイルです。
日本語のみの提供です。

## ドキュメントの情報

- Yasuhiro ARAKAWA
- 2001-11-03（公開版）

このドキュメントは1998年に当時勤務していた企業の社内向けに提供していたものを一般公開用に再構成したものです。
内容は2001年当時のもので現在とは合わない部分があります。（とくに Unicode に関する部分）

ドキュメントの利用についてはクリエイティブ・コモンズ・ライセンスの「表示（Attribution）」相当を目安にして下さい。（オリジナルのクレジットを指示する場合は，このリポジトリページへのリンクを示していただければ問題ありません）
利用に関して事前事後の報告は必要ありませんが，不明な点については作者あてに問い合わせていただけると助かります。

### 概要

異なるプラットフォームでテキスト情報をやり取りする際に必ず問題になるのが「文字コード」の変換です。
また近年はインターネットに代表される情報交換の「国際化」も意識されはじめ，それを受けて登場したUnicodeとの互換性も問題になっています。
本テキストでは「文字コード」の問題について考えてみたいと思います。

## タイプセットについて

### TeX 環境

タイプセットに必要な TeX 環境については [TeX Live](http://www.tug.org/texlive/) 2014 が導入されていることを前提とします。

タイプセットは [upLaTeX](http://oku.edu.mie-u.ac.jp/~okumura/texwiki/?upTeX%2CupLaTeX) を用い，ビルド作業には [latexmk](http://oku.edu.mie-u.ac.jp/~okumura/texwiki/?Latexmk) を用いています。
またデバイスドライバとして [dvipdfmx](http://oku.edu.mie-u.ac.jp/~okumura/texwiki/?dvipdfmx) を指定しています。
作者の環境は Windows 7 64bit です。リポジトリに挙がっている .latexmkrc の設定で上手く動かない場合は適宜修正して下さい。

U*IX 互換環境の場合は .latexmkrc の

```
#$dvipdf = 'dvipdfmx -z9 -V 4 %O -o %D %S && ps2pdf14 -dPDFA -dPDFACompatibilityPolicy=1 -sProcessColorModel=DeviceCMYK %D %R-pdfa.pdf';
```

のコメントアウトを外すと PDF/A 準拠の PDF ファイルの作成まで一気にやってくれます。
（私も含め）Windows 環境の方は残念ながらこの設定は使えません。 charset.pdf が生成されたらコマンドプロンプトから

```
> cnvPDFA.cmd charset
```

とバッチファイルを起動して下さい（ゴメンペコン）

### 画像データについて

iso2202-7.odg, iso2202-8.odg は ISO/IEC 2202 の構造を説明するための画像データです。最初期は Visio で作画していましたが， [LibreOffice/Draw](https://www.libreoffice.org/discover/draw/) に変換しています。
ここから更に SVG 形式 → PDF 形式に変換しています。
実際に使用しているのは PDF 形式のみですが，他の形式も文書ファイルと同様に CC-BY 相当で自由に利用して頂いて構いません。
SVG 形式は [Inkscape](http://www.inkscape.org/) などで利用可能です。

### PDF/A

この文書は最終的に PDF/A-1b 準拠の PDF として出力されています： charset-pdfa.pdf
