class Magazine < ApplicationRecord
    has_many :magazine_oenologists
    has_many :oenologists, through: :magazine_oenologists, dependent: :destroy
    has_many :job_titles, through: :magazine_oenologists, dependent: :destroy
end
