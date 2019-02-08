class User < ApplicationRecord
  # string :uid - unique identifier of a User, which can be used by Caller to do assignments, checks and so on;
  # string :nickname - user name/email/etc. i.e. something to identify a user (more verbose/humanized than `id`)

  has_many :ownings
  has_many :assignments, as: :grantee
end
