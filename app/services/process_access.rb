class ProcessAccess
  class << self
    def create_permission(type, mode, description)
      Permission.create! type: type, mode: mode, description: description
    end

    def fetch_permission(type, mode, description)
      Permission.find_by type: type, mode: mode, description: description
    end

    def permission_by_id(id_or_uid)
      by_id(id_or_uid).first
    end

    def drop_permission!(id_or_uid)
      by_id(id_or_uid).first&.destroy!
      # TODO: probably some additional cleanup here etc.
    end

    private

    def by_id(id_or_uid)
      Permission.where(id: id_or_uid).or(Permission.where(uid: id_or_uid))
    end
  end
end
