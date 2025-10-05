### 前提条件

私の環境ではユーザ名をsudokにしている。

参考 : [Boost 1_86 のインストール（ソースコードを用いたインストール）（Build Tools for Visual Studio を使用）と使用例（Windows 上）  ](https://www.kkaneko.jp/tools/win/boost.html)の通りになるべく環境構築して、バージョンなどは適宜変更している。資料はライセンスを守りたい。

> 公開資料は基本として[ クリエイティブコモンズ 表示-非営利-継承 4.0 国際ライセンス（CC BY-NC-SA 4.0） ](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.ja) で提供しており，事前の許可なく自由に利用できます．条件は著作者表示（BY），非営利目的のみ（NC），同一ライセンスでの再配布（SA）です．記事の推敲等にAIを利用しています．以上の詳細は，[別ページ](https://www.kkaneko.jp/info/usage-j.html#cc)で説明しています．

このプロジェクトはそのまま使いため、ユーザ名を被せない。

> BOOST_DIR

_C:\Users\sudok\boost_1_89_0\build_

> Boost_INCLUDE_DIR

_C:\Users\sudok\boost_1_89_0\build\include\boost-1_89_

> BOOST_ROOT

_C:\Users\sudok\boost_1_89_0\build_

※ 環境変数に追加している前提で書いていく。

#### 検証結果

- [x] cmakeビルドの環境構築するだけで手間がかかる。
- [x] IDE起動は、Clionのほうが速い。
- [x] リンカーはVS2022の方が正確、Clion/boostはエラー塗れになる。
- [x] include_directories($ENV{Boost_INCLUDE_DIR})
→$ENV{}を使えば環境変数をcmakeで呼び出せる。値の入れ子を直接書かなくてよい。
- [x] boost/array、int/stringを要素数4で検証。intは1230の順、stringは文字列が順番通りになっている。