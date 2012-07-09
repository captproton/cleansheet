require 'spec_helper'

describe "documents/edit" do
  before(:each) do
    @document = assign(:document, stub_model(Document,
      :email_body => "MyText",
      :email_from => "MyString",
      :csv => "MyText"
    ))
  end

  it "renders the edit document form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => documents_path(@document), :method => "post" do
      assert_select "textarea#document_email_body", :name => "document[email_body]"
      assert_select "input#document_email_from", :name => "document[email_from]"
      assert_select "textarea#document_csv", :name => "document[csv]"
    end
  end
end
