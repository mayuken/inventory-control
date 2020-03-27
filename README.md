# Inventory control（在庫管理・自動発注システム）
  
  
    
## Production background（制作背景）
 前職（飲食）での、在庫管理、発注業務の非効率さを自動化できる様なシステムがあったら、  
 もっと人の手で行うべきこと（マネジメント、サービス）に目を向けられる【余裕】が生まれるのではないかという想いから制作しました。  
 今後の実装目標としては、日常的に使用される在庫をシステムに自動的にカウントさせ、  
 その後ある一定の期間（１週間、１ヶ月）を在庫事に設定し、その期間ごとの在庫の消費量を自動計算ののち、  
 消費した分の発注を自動で行える様なシステムにしていこうと考えています。  


## DEMO


## 使用技術

HTML,SCSS,jQuery,Ruby,Rails,MySQL,AWS

## To be implemented（実装予定）
 ・UIの向上を図るためフロントサイドの調整  
   
 ・在庫の使用数を自動カウント  
   
 ・指定した一定期間の在庫使用量を自動カウントし、その結果から指定期間に沿って自動発注を行う  
  
## DB design（DB設計）

### foodstuffsテーブル
|Column|Type|Options|
|------|----|-------|
| name     | string | null: false, uniqueness: true |
| image | string  | |
| price     | integer  | null: false |
| capacity    | integer  | |
| quantity     | integer  | null: false |
| category_id     | integer  | null: false, foreign_key: true |

#### Association
- belongs_to :category

### categoriesテーブル
|Column|Type|Options|
|------|----|-------|
| name     | string | null: false, uniqueness: true |

#### Association
- has_many :foodstuffs
