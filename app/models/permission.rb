class Permission < ApplicationRecord
  # string :uid - unique identifier of a Permission, which can be used by Caller to do assignments and so on;
  # (standard `id` usually is for internal use, but can be used here as well, if it makes some difference at all).
  #
  # string :type - `action` or `resource`; right now I see no difference between those two, so I do not want to any structural difference for that;
  # we can split this out to a separate model(s) later when we'll have more info about that [at least difference and behaviour].
  #
  # string :mode - `read` or `write`; I see no reasons to place them in one record [at least for now], especially when we have many-to-many relation;
  # this is heavily depends on usage, I guess; probably makes sense to have something more complex here,
  # like bitmask etc. to deal with additional modes [in future], but that is easy to extend/replace.
  #
  # text :description - actual "permission-to" text, not sure if we're OK to store it this way, or somehow another;
  # as far as this is more like Caller's responsibility I'd rather keep it this way.

  # permissions associated with `users` and `roles` as many-to-many via `assignments`
  # I'd rather split that table into ones to avoid polymorphic relation, especially when we think about query optimization and so on.
  # Otherwise it's OK to have it, I guess.
  has_many :assignments

  validates :type, :mode, :description, presence: true
  validates :description, uniqueness: { scope: %i[type mode], case_sensitive: false }
end
