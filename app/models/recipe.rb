class Recipe < ApplicationRecord
    belongs_to :category
    belongs_to :recipe_type
    belongs_to :author

    validates :name, :uniqueness => true, :presence => true
    validates :author, :presence => true, allow_blank: false
    validates :recipe_type, :presence => true, allow_blank: false
    validates :category, :presence => true, allow_blank: false
    validates :ingredients, :presence => true, allow_blank: false
    validates :steps, :presence => true, allow_blank: false
    validates :image_url, :presence => true, allow_blank: false
end
