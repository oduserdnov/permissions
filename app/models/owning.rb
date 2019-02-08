class Owning < ApplicationRecord
  with_options required: true do
    belongs_to :user
    belongs_to :role
  end
end
