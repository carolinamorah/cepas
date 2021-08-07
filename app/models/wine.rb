class Wine < ApplicationRecord
    has_many :winestrains, dependent: :destroy
    has_many :strains, through: :winestrains
    has_many :wine_oenologists, dependent: :destroy
    has_many :oenologists, through: :wine_oenologists, dependent: :destroy

    validates :score, numericality: {less_than_or_equal_to: 100}, presence: true
    validates :name, presence: true
    

    def strain_names_and_percentages
        list=[]
        orderlist=[]
        winestrains.map do |ws|
            list << [ws.strain.name, ws.percent]
        end
        
        list.sort_by{ |strain| strain[0]}.map do |cepa|
            "#{cepa[0]} (#{cepa[1]}%)"         
        end.join(', ')
        
    end

    def addStrainPercent(percents)
        percents.each do |strain_id, percent|
            if percent != ''
                temp_strain = self.winestrains.where(strain_id: strain_id).first
                temp_strain.percent = percent
                temp_strain.save 
            end
        end
    end
    

    def get_oenologist
        oenologists.map{ |oenologist| oenologist.name}.join(', ')
    end
end
