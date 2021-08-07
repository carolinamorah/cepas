class Oenologist < ApplicationRecord
    has_many :magazine_oenologists, dependent: :destroy
    has_many :magazines, through: :magazine_oenologists
    has_many :job_titles, through: :magazine_oenologists

    has_many :wine_oenologists, dependent: :destroy 
    has_many :wines, through: :wine_oenologists

    validates :name, presence: true
    validates :nationality, presence: true
    validates :age, presence: true
    
    

    def magazine_name
        magazines.map do |magazine_info|
            magazine_info.name
        end.join(', ')
    end

    def job_name
        job_titles.map do |j|
            j.name
        end.join(', ')
    end
end
