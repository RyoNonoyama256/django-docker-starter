#!/bin/sh

# 作業ディレクトリ
PROJECT_DIR="/app"

# 環境変数からプロジェクト名を取得、未設定の場合はデフォルト値を使用
PROJECT_NAME=${PROJECT_NAME:-myproject}

# プロジェクトディレクトリが存在しない場合に作成する
if [ ! -d "$PROJECT_DIR/blogproject" ]; then
  mkdir -p "./$PROJECT_NAME"
  cd "./$PROJECT_NAME"
  django-admin startproject $PROJECT_NAME .
fi

# Django開発サーバーを起動する
exec "$@"
