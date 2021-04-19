class V1::TodoProjectSerializer < ActiveModel::Serializer
  attributes :id, :text, :isCompleted, :project_id
end
