class ManageRoles
  class << self
    def create_role(name)
      Role.create! name: name
    end

    def assign_permissions(_role_ids, _permission_ids)
      # TODO: deal with permissions, assign permissions using `Assignments`
    end

    def list_permissions_of(_role_id)
      # TODO: list requested `role`'s `permissions`, format that with `to_json` calls or smth like that
    end

    def assign_to(_user_id, _role_ids)
      # TODO: assign all requested role(s) to user, raise if anything is missing
    end

    def drop_permission(_role_id, _permission_id)
      # TODO: do we care about "multiple-at-once" here? We can do it iteratively
      # TODO: drop corresponding `assignments`
    end

    def drop_role(_id)
      # TODO: remove `role`, its `assignments` will be dropped accordingly.
      # TODO: but we like to keep its `permissions` as far as we have "many-to-many" association.
    end
  end
end
