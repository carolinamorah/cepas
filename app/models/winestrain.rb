class Winestrain < ApplicationRecord
  belongs_to :wine
  belongs_to :strain

  validate :percentage_limit

  def percentage_limit
    if percent.to_i > 100
  errors.add(:percent, "The percentage must be between 1 and 100")
    end
  end
end
