class CreateVoprosies < ActiveRecord::Migration
  def change
    create_table :voprosies do |t|
      t.text :vopr
      t.integer :tur
      t.integer :id_uchast
      t.string :categor

      t.timestamps
    end
    change_table :voprosies do |t|
      t.string :otvet1
      t.string :otvet2
      t.string :otvet3
      t.string :otvet4

      t.timestamps
    end  
  end
end
