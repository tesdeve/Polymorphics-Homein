class CreateConjuntos < ActiveRecord::Migration[6.0]
  def change
    create_table :conjuntos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
