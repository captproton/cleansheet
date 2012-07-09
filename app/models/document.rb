class Document < ActiveRecord::Base
  attr_accessible :csv, :email_body, :email_from, :email_sent_at
end
