# Pay attention:

#### Models have some comments to explain my thoughts.

#### I think `services` layer can help to make entire app more like "module" rather than MVC application, but that's not a big deal right now, we can go with plain models+controllers usage or use services in controllers.

#### I'm not good enough in naming, please don't mind that.

## Methods:

  - `ManageUser` service:
    - `ManageUser.new(id_or_uid)`
    - `ManageUser#user`
    - `ManageUser#persist_user(attributes)`
    - `ManageUser#assign_permissions(permission_ids)`
    - `ManageUser#can?(permission_id)`
    - `ManageUser#list_roles`
    - `ManageUser#list_permissions`
    - `ManageUser#drop_user!`

  - `ProcessAccess` service:
    - `ProcessAccess.create_permission(type, mode, description)`
    - `ProcessAccess.fetch_permission(type, mode, description)`
    - `ProcessAccess.permission_by_id(id_or_uid)`
    - `ProcessAccess.drop_permission!(id_or_uid)`
    
  - `ManageRoles` service:
    - `ManageRoles.create_role(name)`
    - `ManageRoles.assign_permissions(role_ids, permission_ids)`
    - `ManageRoles.list_permissions_of(role_id)`
    - `ManageRoles.assign_to(user_id, role_ids)`
    - `ManageRoles.drop_permission(role_id, permission_id)`
    - `ManageRoles.drop_role(role_id)`
