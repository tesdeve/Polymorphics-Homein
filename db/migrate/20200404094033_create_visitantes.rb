class CreateVisitantes < ActiveRecord::Migration[6.0]
  def change
    create_table :visitantes do |t|

      t.timestamps
    end
  end
end
