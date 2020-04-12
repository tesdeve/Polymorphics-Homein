class Residente < ApplicationRecord
  has_many :detallespersonas, as: :personable
  accepts_nested_attributes_for :detallespersonas, allow_destroy: true
end
