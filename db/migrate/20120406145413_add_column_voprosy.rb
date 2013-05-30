class AddColumnVoprosy < ActiveRecord::Migration
  def change
    change_table :voprosies do |t|
      t.string :otvet1
      t.string :otvet2
      t.string :otvet3
      t.string :otvet4

      t.timestamps
    end  
  end
end
