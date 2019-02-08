class Role < ApplicationRecord
  # string :uid # unique identifier of Role, as per User and Permission
  # string :name # role name, verbosity

  has_many :ownings, dependent: :destroy
  has_many :assignments, as: :grantee, dependent: :destroy

  validates :name, presence: true
end
