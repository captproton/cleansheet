require 'spec_helper'

describe CsvController do

  describe "GET 'import'" do
    it "returns http success" do
      get 'import'
      response.should be_success
    end
  end

end
