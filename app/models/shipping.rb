class Shipping < ApplicationRecord
  belongs_to :user
  belongs_to :order, optional: true

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :first_kana_name, presence: true
  validates :last_kana_name, presence: true
  validates :phone, presence: true, format: /\A\d{10,11}\z/
  validates :postal_code, presence: true, format: /\A\d{7}\z/
  validates :prefecture, presence: true
  validates :city, presence: true
  validates :building, presence: true

# 住所の自動入力
  include JpPrefecture
  jp_prefecture :prefecture_code

  def prefecture_name
  JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
  end

  def prefecture_name=(prefecture_name)
  self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
  end
end
