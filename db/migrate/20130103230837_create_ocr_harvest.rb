class CreateOcrHarvest < ActiveRecord::Migration
def change
    create_table :ocr_harvests do |t|
      t.text :raw_text
      t.text :output_text

      t.timestamps
    end
  end
end
