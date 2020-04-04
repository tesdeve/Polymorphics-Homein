class CreateDetallespersonas < ActiveRecord::Migration[6.0]
  def change
    create_table :detallespersonas do |t|
      t.references :personable, polymorphic: true, null: false
      t.string :nombre
      t.string :apellido
      t.string :edad
      t.string :cedula
      t.string :huella_digital

      t.timestamps
    end
  end
end
