class CreateInsertions < ActiveRecord::Migration[6.0]
  def change
    create_table :insertions do |t|
      t.string :title   
      t.integer :views  #visite che riceve il tuo account
      t.integer :price
      t.references :user, null: false, foreign_key: true
      t.timestamps
      
    end
  end
end
