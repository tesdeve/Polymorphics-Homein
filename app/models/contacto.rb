class Contacto < ApplicationRecord
  belongs_to :contactable, polymorphic: true
end
