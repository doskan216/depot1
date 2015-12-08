class Product < ActiveRecord::Base
    validates :title, :description, :image_url, presence: true
    validates :price, numericality: {greater_than_or_equal_to: 0.01}
    validates :title, uniqueness: true
    validates :image_url, allow_blank: true, format: {
       with:    %r{\.(gif|jpg|png)\Z}i,
       message: 'はGIF、JPG、PNG画像のURLでなければなりません'
    }

     #自由課題
#商品名が10文字以上の長さであることを調べる
#検証に関連づけたエラーメッセージの一つを変更する。
    validates :title, length:{minimum: 10, message: "は10文字以上です"}

   end
