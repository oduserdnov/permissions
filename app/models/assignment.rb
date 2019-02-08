class Assignment < ApplicationRecord
  with_options required: true do
    belongs_to :grantee, polymorphic: true # polymorphic relation, which is actually `grantee_id` (FK id) + `grantee_type` (FK model name)
    belongs_to :permission
  end
end
