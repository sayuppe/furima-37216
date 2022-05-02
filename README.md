#テーブル設計

##usersテーブル

| Column             | Type   | Options     |
| ------------------ | ------  | ----------- |
| nickname           | string  | null: false |
| email              | string  | null: false |
| family_name        | string  | null: false |
| first_name         | string  | null: false |
| birth_year         | string  | null: false |
| birth_month        | string  | null: false |
| birth_day          | string  | null: false |
| phone_number       | integer | unique:true |

<!-- 
has_many :items
has_many :comments 
-->
##itemsテーブル

| Column             | Type       | Options     |
| ------------------ | ------     | ----------- |
| name               | string     | null: false |
| price              | integer    | null: false |
| img                | references | null: false |
| introduction       | text       | null: false |
| condition          | integer    | null: false |
| category_id        | references | null: false, foreign_key: true |
| shipping_id        | references | null: false, foreign_key: true |
| brand_id           | references | null: false, foreign_key: true |

<!-- 
belongs_to :user
belongs_to :category
belongs_to :brand
has_many :comments
has_one :shipping 
-->

##commentsテーブル
| Column             | Type       | Options     |
| ------------------ | ------     | ----------- |
| commenttext        |            | null: false |
| user_id            | references | null: false, foreign_key: true |
| item_id            | references | null: false, foreign_key: true |

<!-- 
belongs_to :item
belongs_to :user
 -->

 ##categoriesテーブル
| Column         | Type       | Options     |
| -------------- | ------     | ----------- |
| name           | string | 
| parent_id      | integer | 

##shippingsテーブル

|Colunm        | Type        | Options      |
| ------------ | ------      | --------- -- |
|fee_burden    | boolean??   |null: false   |
|region        | integer     |null: false   |
|handling_time | integer     |	null: false |

<!-- belongs_to :item -->

##brandテーブル
|Colunm        | Type        | Options      |
| ------------ | ------      | --------- -- |
| category_id  | references  | null: false, foreign_key: true |
| brand_id     | references  | null: false, foreign_key: true |
| name         | string      | null: false  |
