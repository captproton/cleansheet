class ImportCell < ActiveRecord::Base
  attr_accessible :column_index, :contents, :import_table_id, :row_index
  belongs_to :import_table
  
end
