require "spec_helper"

describe StatusController do
  describe "routing" do

    it "routes to #index" do
      get("/status").should route_to("status#index")
    end

    it "routes to #new" do
      get("/status/new").should route_to("status#new")
    end

    it "routes to #show" do
      get("/status/1").should route_to("status#show", :id => "1")
    end

    it "routes to #edit" do
      get("/status/1/edit").should route_to("status#edit", :id => "1")
    end

    it "routes to #create" do
      post("/status").should route_to("status#create")
    end

    it "routes to #update" do
      put("/status/1").should route_to("status#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/status/1").should route_to("status#destroy", :id => "1")
    end

  end
end
