class Role < ApplicationRecord
  # string :uid # unique identifier of Role, as per User and Permission
  # string :name # role name, verbosity

  has_many :ownings
  has_many :assignments, as: :grantee

  validates :name, presence: true
end
