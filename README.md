# README

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