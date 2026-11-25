class Potion < ApplicationRecord
    has_many :bombs

    validates :name, presence: true
end
