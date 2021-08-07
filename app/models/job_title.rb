class JobTitle < ApplicationRecord
    has_many :magazine_oenologists
    has_many :oenologists, through: :magazine_oenologists, dependent: :destroy
    has_many :magazines, through: :magazine_oenologists, dependent: :destroy

    validates :name, presence: true
end
