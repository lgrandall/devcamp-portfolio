class Technology < ApplicationRecord
  belongs_to :portfolio, inverse_of: :technology
end
