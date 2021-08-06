class Strain < ApplicationRecord
    has_many :winestrains, dependent: :destroy
    has_many :wines, through: :winestrains

    validates :name, presence: true, uniqueness: true

    def availability
        if available == true
            "Yes"
        else
            "No"
        end
    end

end
