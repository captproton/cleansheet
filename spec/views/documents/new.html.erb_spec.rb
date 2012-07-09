require 'spec_helper'

describe "documents/new" do
  before(:each) do
    assign(:document, stub_model(Document,
      :email_body => "MyText",
      :email_from => "MyString",
      :csv => "MyText"
    ).as_new_record)
  end

  it "renders new document form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => documents_path, :method => "post" do
      assert_select "textarea#document_email_body", :name => "document[email_body]"
      assert_select "input#document_email_from", :name => "document[email_from]"
      assert_select "textarea#document_csv", :name => "document[csv]"
    end
  end
end
