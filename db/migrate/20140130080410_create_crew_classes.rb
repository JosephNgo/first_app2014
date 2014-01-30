class CreateCrewClasses < ActiveRecord::Migration
  def change
    create_table :crew_classes do |t|
      t.integer :item_id
      t.string :class_desc

      t.timestamps
    end
  end
end
