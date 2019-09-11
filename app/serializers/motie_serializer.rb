class MotySerializer < ActiveModel::Serializer
  attributes :id, :emotion, :intensity, :cause, :appearance, :solution
end
