class MagazineOenologist < ApplicationRecord
  belongs_to :magazine, optional: true
  belongs_to :oenologist, optional: true
  belongs_to :job_title, optional: true
end
