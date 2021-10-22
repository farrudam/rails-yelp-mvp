class Restaurant < ApplicationRecord
  # we don't want to have reviews that belong to a deleted restaurant;
  # now i can call any restaurant instance.reviews(@restaurant.reviews);
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }, presence: true
end
