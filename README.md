# テーブル設計

## users テーブル
| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| last_name          | string | null: false               |
| last_kana_name     | string | null: false               |
| first_name         | string | null: false               |
| first_kana_name    | string | null: false               |
| birthday           | date   | null: false               |

### Association
- has_many :items
- has_many :orders


## items テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| name         | string     | null: false                    |
| content      | text       | null: false                    |
| category_id  | integer    | null: false                    |
| situation_id | integer    | null: false                    |
| fee_id       | integer    | null: false                    |
| area_id      | integer    | null: false                    |
| delivery_id  | integer    | null: false                    |
| price        | integer    | null: false                    |
| user         | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_one :order


## orders テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| item    | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :item
- has_one :address


## addressed テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| postal_code   | string     | null: false                    |
| area_id       | integer    | null: false                    |
| city          | string     | null: false                    |
| street        | string     | null: false                    |
| building_name | string     |                                |
| phone_number  | string     | null: false                    |
| order         | references | null: false, foreign_key: true |

### Association
- belongs_to :order