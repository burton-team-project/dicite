class Item < ApplicationRecord
  acts_as_paranoid

  belongs_to :artist
  belongs_to :genre
  belongs_to :label
  has_many :cds
  has_many :favorites
  has_many :reviews
  has_many :carts
  has_many :order_items
  attachment :jacket_image
  accepts_nested_attributes_for :cds, allow_destroy: true

  validates :name, presence: true
  validates :price, presence: true
  validates :stock, presence: true
  validates :genre_id, presence: true
  validates :artist_id, presence: true
  validates :label_id, presence: true

  enum status: { sale: 0, sold_out: 1}

  def favorited_by?(user)
   favorites.where(user_id: user.id).exists?
  end
end
