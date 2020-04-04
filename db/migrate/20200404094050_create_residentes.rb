class CreateResidentes < ActiveRecord::Migration[6.0]
  def change
    create_table :residentes do |t|
      t.boolean :principal

      t.timestamps
    end
  end
end
