# this class take care of User creation and fetching (maybe something else later)
class ManageUser
  attr_reader :user

  def initialize(id_or_uid = nil)
    @user = fetch_user id_or_uid
  end

  def persist_user(attributes)
    user ? user.update!(attributes) : User.create!(attributes)
  end

  def assign_permissions(_permission_ids)
    # TODO: deal with permission(s) assigned directly to user
    # Not sure if we need an ability to use mode+type+description instead of ids here as well.
  end

  # TODO: same thing here: are we OK to use `id`/`uid` here, or it's unlikely the case?
  def can?(permission_id)
    return false unless user

    user.assignments.by_permission(permission_id).exists? ||
      user.roles.any? { |role| role.assignments.by_permission(permission_id).exists? }

    # FIXME: `exists?` will do a database call each time. We can avoid that using better grained query, we can care about that a bit later.
  end

  def list_roles
    # TODO: returns list of `user.permissions` to Caller, format that with `to_json` calls or smth like that
  end

  def list_permissions
    # TODO: returns list of `user.roles` to Caller, format that with `to_json` calls or smth like that
  end

  def drop_user!
    # soft of hard user deleting
  end

  private

  def fetch_user(_id_or_uid)
    # Some logic here to deal with `User` detection by `id` or `uid` attribute.
    # We can split this argument into two for more strict usage, not a big deal though.
    #
    # Need to check `user` presence and raise error otherwise
  end
end
