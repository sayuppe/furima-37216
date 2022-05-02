#テーブル設計

##usersテーブル

| Column             | Type   | Options     |
| ------------------ | ------  | ----------- |
| nickname           | string  | null: false |
| email              | string  | null: false |
| encrypted_password | string  | null:false  |
| family_name        | string  | null: false |
| first_name         | string  | null: false |
| family_name_kana   | string  | null: false |
| first_name_kana    | string  | null: false |
| birth_date         | date    | null: false |


has_many :items

##itemsテーブル

| Column             | Type       | Options     |
| ------------------ | ------     | ----------- |
| name               | string     | null: false |
| price              | integer    | null: false |
| introduction       | text       | null: false |
| condition_id       | integer   | null: false |
| category_id        | integer    | null: false, foreign_key: true |
| shipping_id        | integer    | null: false, foreign_key: true |
| brand_id           | integer    | null: false, foreign_key: true |


belongs_to :user

##cardテーブル
| Column      | Type    | Options                        |
| ----------- | ------  | ------------------------------ |
| user_id     | integer | null: false, foreign_key: true |
| customer_id | string  | null: false                    |
| card_id     | string  | null: false                    |

belongs_to :user

##buyテーブル
| Column        | Type    | Options                       |
| -----------   | ------  | ----------------------------- |
| post_code     | string  | null: false |
| prefecture    | string  | null: false |
| city          | string  | null: false |
| address       | string  | null: false |
| building_name | string  |
| phone_number  | string  |

belongs_to :user