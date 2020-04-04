class Detallespersona < ApplicationRecord
  belongs_to :personable, polymorphic: true
end
