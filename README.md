# README

# アプリケーション名
Reading Habits

# アプリケーション概要
ユーザー登録をすると投稿することができ、ユーザー同士で投稿内容を共有することができます。

# アプリケーション作成の背景
以下のような悩みがある人へ向けた解決の手段として考えました。

### ・読書を習慣にしたいが、なかなか時間が作れない人
### ・興味がある本を何冊も買ったものの、あまり読まずに溜まってしまう
### ・読んでも頭に残っていない

# 要件定義

## スプレッドシートリンク
https://docs.google.com/spreadsheets/d/1KTUJ2W8wehVdUcsgXMsQbhJnqgALUy9RzFhg0DYW2FY/edit#gid=982722306

# ER図
[![Image from Gyazo](https://i.gyazo.com/8cc05476084d99a69dba613963ebf6ac.png)](https://gyazo.com/8cc05476084d99a69dba613963ebf6ac)


# テーブル設計

## user table

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |


### Association
- has_many :posts



## post table

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| title              | string     | null: false                    |
| content            | text       | null: false                    |

### Association
- belongs_to :user
- has_one_attached :image