#テーブル設計

##usersテーブル

| Column             | Type   | Options     |
| ------------------ | ------  | ----------- |
| nickname           | string  | null: false |
| email              | string  | null: false, unique: true |
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
| condition_id       | integer    | null: false |
| category_id        | integer    | null: false, foreign_key: true |
| shipping_id        | integer    | null: false, foreign_key: true |
| shipping_cost      | integer    | null: false, foreign_key: true |
| shipping_days      | integer    | null: false, foreign_key: true |
| brand_id           | integer    | null: false, foreign_key: true |
| user_id            | integer    | null: false, foreign_key:true  |

belongs_to :user
belongs_to :buy

##cardsテーブル
| Column      | Type    | Options                        |
| ----------- | ------  | ------------------------------ |
| purchased_item_id     | references | null: false |
| customer_id           | references | null: false |

belongs_to :buy
belongs_to :user

##buysテーブル
| Column        | Type    | Options                       |
| -----------   | ------  | ----------------------------- |
| post_code     | string  | null: false |
| prefecture    | string  | null: false |
| city          | string  | null: false |
| address       | string  | null: false |
| building_name | string  |
| phone_number  | string  | null: false |

has_one : card
