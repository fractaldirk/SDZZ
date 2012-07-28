require "spec_helper"

describe LeaguetablesController do
  describe "routing" do

    it "routes to #index" do
      get("/leaguetables").should route_to("leaguetables#index")
    end

    it "routes to #new" do
      get("/leaguetables/new").should route_to("leaguetables#new")
    end

    it "routes to #show" do
      get("/leaguetables/1").should route_to("leaguetables#show", :id => "1")
    end

    it "routes to #edit" do
      get("/leaguetables/1/edit").should route_to("leaguetables#edit", :id => "1")
    end

    it "routes to #create" do
      post("/leaguetables").should route_to("leaguetables#create")
    end

    it "routes to #update" do
      put("/leaguetables/1").should route_to("leaguetables#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/leaguetables/1").should route_to("leaguetables#destroy", :id => "1")
    end

  end
end
