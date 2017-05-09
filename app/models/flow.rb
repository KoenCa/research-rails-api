class Flow
  include Mongoid::Document

  field :trashed, type: Boolean
  field :name, type: String
  field :flow_group_id, type: BSON::ObjectId
  field :synchronous, type: Boolean
  field :error_components, type:  Array
  field :lock_user_id, type:  BSON::ObjectId
  field :tracing_ttl, type:  String
  field :components, type:  Array
end
