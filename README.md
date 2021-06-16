# 課題＠Medpeer様


# テーブル設計

![ER ](https://user-images.githubusercontent.com/77272798/122301272-69347e00-cf3b-11eb-869a-bdac7be50190.png)

## categoriesテーブル
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |

### Association

- has_many :ideas

## ideasテーブル
| Column      | Type   | Options        |
| ----------- | ------ | -------------- |
| category_id | bigint | null: false    |
| body        | text   | null: false    |

### Association

- belongs_to :category