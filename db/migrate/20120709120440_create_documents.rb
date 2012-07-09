class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.text :email_body
      t.string :email_from
      t.date :email_sent_at
      t.text :csv

      t.timestamps
    end
  end
end
