class Detail < ApplicationRecord
  belongs_to :animal
  validates :name, :presence => true
  validates :breed, :presence => true
  validates :gender, :presence => true
  validates :weight, :presence => true
  validates :bio, :presence => true
end 