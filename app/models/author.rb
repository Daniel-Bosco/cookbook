class Author < ApplicationRecord
    has_many :recipe
    belongs_to :category

    validates :first_name, :presence => true, allow_blank: false
    validates :last_name, :presence => true, allow_blank: false
end
