class Comment < ApplicationRecord
  belong_to :tweet # tweetsテーブルとのアソシエーション
  belong_to :user # usersテーブルとのアソシエーション
end
