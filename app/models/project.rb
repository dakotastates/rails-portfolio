class Project < ApplicationRecord
  has_many :project_categories
  has_many :categories, through: :project_categories
  accepts_nested_attributes_for :categories, :reject_if => :all_blank
  # accepts_nested_attributes_for :categories, :reject_if => :all_blank
end
