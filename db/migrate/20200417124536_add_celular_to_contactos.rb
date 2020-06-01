class AddCelularToContactos < ActiveRecord::Migration[6.0]
  def change
    add_column :contactos, :celular, :string
  end
end
