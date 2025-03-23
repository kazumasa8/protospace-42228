# テーブル設計

## users テーブル

| カラム名            | 型       | 制約                          |
|--------------------|---------|-----------------------------|
| email            | string  | NOT NULL, ユニーク制約      |
| encrypted_password | string  | NOT NULL                    |
| name             | string  | NOT NULL                    |
| profile         | text    | NOT NULL                    |
| occupation      | text    | NOT NULL                    |
| position       | text    | NOT NULL                    |

## prototypes テーブル

| カラム名    | 型         | 制約                      |
|-----------|-----------|--------------------------|
| title     | string    | NOT NULL                |
| catch_copy | text      | NOT NULL                |
| concept   | text      | NOT NULL                |
| user      | references | NOT NULL, 外部キー      |

※ image は ActiveStorage で実装するため含まない。

## comments テーブル

| カラム名    | 型         | 制約                      |
|-----------|-----------|--------------------------|
| content   | text      | NOT NULL                |
| prototype | references | NOT NULL, 外部キー      |
| user      | references | NOT NULL, 外部キー      |

## テーブル間の関係

- `users` テーブルと `prototypes` テーブルは 1 対多の関係（1人のユーザーは複数のプロトタイプを作成できる）。
- `users` テーブルと `comments` テーブルは 1 対多の関係（1人のユーザーは複数のコメントを投稿できる）。
- `prototypes` テーブルと `comments` テーブルは 1 対多の関係（1つのプロトタイプには複数のコメントがつく）。





Plus を入手