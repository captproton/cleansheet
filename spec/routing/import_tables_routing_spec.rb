require "spec_helper"

describe ImportTablesController do
  describe "routing" do

    it "routes to #index" do
      get("/import_tables").should route_to("import_tables#index")
    end

    it "routes to #new" do
      get("/import_tables/new").should route_to("import_tables#new")
    end

    it "routes to #show" do
      get("/import_tables/1").should route_to("import_tables#show", :id => "1")
    end

    it "routes to #edit" do
      get("/import_tables/1/edit").should route_to("import_tables#edit", :id => "1")
    end

    it "routes to #create" do
      post("/import_tables").should route_to("import_tables#create")
    end

    it "routes to #update" do
      put("/import_tables/1").should route_to("import_tables#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/import_tables/1").should route_to("import_tables#destroy", :id => "1")
    end

  end
end
