require 'csv'

class CsvController < ApplicationController
  def import
  end
  
  def upload
    # While under development, just respond by rendering some in-line text.
    # Send back the request parameters in JSON (JavaScript Object Notation)
    # format, i.e. something reasonably easy to parse with the human eye.
    # render :text => params.to_json
    # render :text => params[:upload][:csv].to_json
    
    uploaded_io = params[:upload][:csv]
    data = uploaded_io.read
    
    table = ImportTable.new :original_path => uploaded_io.original_filename
    row_index = 0
    CSV.parse(data) do |cells|
      column_index = 0
      cells.each do |cell|
        table.import_cells.build :column_index => column_index, :row_index => row_index, :contents => cell
        column_index += 1
      end
      row_index += 1
    end
    table.save
    redirect_to import_table_path(table)
    
  end
end
