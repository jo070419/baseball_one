class Recruitment < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  validates :title,         presence: true
  validates :category_id,   numericality: { other_than: 1, message: "can't be blank" }
  validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :municipality,  presence: true
  validates :locate,        presence: true
  validates :ground,        presence: true
  validates :date,          presence: true
  validates :start_time_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :end_time_id,   numericality: { other_than: 1, message: "can't be blank" }
  validates :dead_line,     presence: true

  belongs_to :user
  has_one    :agreement
  belongs_to :prefecture
  belongs_to :category
  belongs_to :start_time
  belongs_to :end_time
end
