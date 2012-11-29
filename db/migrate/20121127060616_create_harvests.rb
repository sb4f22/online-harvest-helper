class CreateHarvests < ActiveRecord::Migration
  def change
    create_table :harvests do |t|
      t.text :raw_text
      t.text :output_text

      t.timestamps
    end
  end
end
