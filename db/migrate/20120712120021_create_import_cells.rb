class CreateImportCells < ActiveRecord::Migration
  def change
    create_table :import_cells do |t|
      t.integer :import_table_id
      t.integer :row_index
      t.integer :column_index
      t.string :contents

      t.timestamps
    end
  end
end
