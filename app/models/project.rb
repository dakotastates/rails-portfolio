class Project < ApplicationRecord
  has_many :project_categories, dependent: :delete_all
  has_many :categories, through: :project_categories
  accepts_nested_attributes_for :categories, reject_if: proc { |attributes| attributes['category'].blank? }

  # def categories_attributes=(attributes)
  #   attributes.values.each do |v|
  #     self.categories << Category.find_or_create_by(v)
  #   end
  # end

end
