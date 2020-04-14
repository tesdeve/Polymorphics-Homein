class CreateContactos < ActiveRecord::Migration[6.0]
  def change
    create_table :contactos do |t|
      t.references :contactable, polymorphic: true, null: false
      t.string :telefono
      t.string :email

      t.timestamps
    end
  end
end
