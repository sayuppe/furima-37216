#テーブル設計

##usersテーブル
<!-- ユーザーテーブル -->

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
has_many :buy

##itemsテーブル
<!-- 商品テーブル -->

| Column             | Type       | Options     |
| ------------------ | ------     | ----------- |
| name               | string     | null: false |
| introduction       | text       | null: false |
| category_id        | integer    | null: false |
| condition_id       | integer    | null: false |
| shipping_cost_id   | integer    | null: false |
| prefecture_id 　　  | string  |   null: false |
| shipping_days_id   | integer    | null: false |
| price              | integer    | null: false |
| user               | references | null: false, foreign_key: true |


belongs_to :user
has_one : buy



##buyテーブル
<!-- 購入テーブル -->

| Column      | Type    | Options                        |
| ----------- | ------  | ------------------------------ |
| user        | references | null: false, foreign_key: true |
| item        | references | null: false |
| addressee        | references | null: false |



belongs_to :user
belongs_to :item
has_one :addres

##Addressesテーブル
<!-- 配送先のテーブル -->

| Column        | Type    | Options                       |
| -----------   | ------  | ----------------------------- |
| post_code     | string  | null: false |
| prefecture_id  | string  | null: false |
| city          | string  | null: false |
| address       | string  | null: false |
| building_name | string  |
| phone_number  | string  | null: false |
| buy               | references | null: false, foreign_key: true |

belongs_to :buy
