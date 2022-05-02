＃テーブル設計

##usersテーブル
| Column             | Type       | Options     |
| -------------------| ---------- | ------------|
|nickname            | string     | null:false  |
|email               | string     | null:false  |
|password            | string     | null:false  |
|family_name         | string     | null:false  |
|first_name          | string     | null:false  |
|family_name_kana    | string     | null:false  |
|first_name_kana     | string     | null:false  |
|birth_day           | string     | null:false  |

<!-- has_many -->

##itemsテーブル
| Column          | Type       | Options                        |
| -----           | ---------- | ------------------------------ |
| name            | string     | null:false |
| introduction    | text       | null:false |
| price           | integer    | null:false |
| brand           | integer    |            |
| item_condition  | integer    | null:false |
| postage_payer   | integer    | null:false |
| preparation_day | integer    | null:false |
| postage_type    | integer    | null:false |
| category        | integer    | null:false |
| trading_status  | integer    | null:false |
| seller          | references | null:false |
| buyer           | references | null:false |

##ordersテーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |