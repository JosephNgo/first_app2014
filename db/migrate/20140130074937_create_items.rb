class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :qty
      t.string :location
      t.string :part_num

      t.timestamps
    end
  end
end
