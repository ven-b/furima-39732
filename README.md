# テーブル設計

## users テーブル
| Column             | Type     | Options                   |
| ------------------ | -------- | ------------------------- |
| nickname           | string   | null: false               |
| email              | string   | null: false, unique: true |
| password           | string   | null: false               |
| encrypted_password | string   | null: false               |
| last_name          | string   | null: false               |
| last_kana_name     | string   | null: false               |
| first_name         | string   | null: false               |
| first_kana_name    | string   | null: false               |
| birthday           | datetime | null: false               |

### Association
- has_many :items
- has_many :purchases


## items テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| name           | string     | null: false                    |
| content        | text       | null: false                    |
| category       | string     | null: false                    |
| situation      | string     | null: false                    |
| shipping_money | string     | null: false                    |
| shipping_area  | string     | null: false                    |
| shipping_day   | string     | null: false                    |
| purchase_price | string     | null: false                    |
| user           | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_one :purchase


## purchases テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| items   | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :item
- has_one :address


## Addressed テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| postcode      | integer    | null: false                    |
| region        | string     | null: false                    |
| city          | string     | null: false                    |
| street        | string     | null: false                    |
| building_name | string     |                                |
| phone_number  | integer    | null: false                    |
| purchase      | references | null: false, foreign_key: true |

### Association
- belongs_to :purchase