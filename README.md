dotfiles
========

## About
環境の構成を管理するためのリポジトリです。

## Description
管理対象のコンテンツは以下の通りです。

* bash設定ファイル
* screen設定ファイル
* vim設定ファイル

## Installation
インストール手順は以下の通り:

1. cloneの実行 

    $ git clone https://github.com/chiroru/dotfiles.git

2. プロキシ環境の場合はプロキシの設定を実行

Windows環境の場合

 set HTTPS_PROXY=http://ユーザID:パスワード@プロキシサーバ:ポート
 set HTTP_PROXY=http://ユーザID:パスワード@プロキシサーバ:ポート

3. setup.shの実行

    $ cd dotfiles

    $ sh setup.sh
