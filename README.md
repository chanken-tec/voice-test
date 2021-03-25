# README

## usersテーブル

| Column                   | Type     | Options                   |
| ------------------------ | -------- | ------------------------- |
| nickname                 | string   | null: false               |
| email                    | string   | null: false, unique: true |
| encrypted_password       | string   | null: false               |

### Association
- has_many :voices
- has_many :manuals

## voicesテーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| voice_data       | text       | null: false                    |
| history          | text       |                                |

### Association
- belongs_to :user
- has_many   :manuals

## manualsテーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| URL              | string     | null: false                   |

### Association
- belongs_to :voice
- belongs_to :user
