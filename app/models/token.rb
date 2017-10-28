class Token < ApplicationRecord
  validates_presence_of :token_data
end
