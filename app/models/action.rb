class Action < ActiveRecord::Base
  validates :title, length: { minimum: 5 }, presence: true
  validates :description, length: { minimum: 20 }, presence: true
  validates :img, length: { minimum: 5 }, presence: true
end
