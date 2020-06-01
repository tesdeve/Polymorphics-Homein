class CreatePropiedads < ActiveRecord::Migration[6.0]
  def change
    create_table :propiedads do |t|
      t.string :propiedad_type
      t.references :conjunto, null: false, foreign_key: true
      t.references :residente, null: false, foreign_key: true
      t.string :edificio
      t.string :identificador
      t.string :parqueaderos

      t.timestamps
    end
  end
end
