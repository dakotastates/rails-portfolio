class Category < ApplicationRecord
  has_many :project_categories, dependent: :delete_all
  has_many :projects, through: :project_categories

  validates :category, uniqueness: true
end
