require "spec_helper"

describe WebCamCapturesController do
  describe "routing" do

    it "routes to #index" do
      get("/web_cam_captures").should route_to("web_cam_captures#index")
    end

    it "routes to #new" do
      get("/web_cam_captures/new").should route_to("web_cam_captures#new")
    end

    it "routes to #show" do
      get("/web_cam_captures/1").should route_to("web_cam_captures#show", :id => "1")
    end

    it "routes to #edit" do
      get("/web_cam_captures/1/edit").should route_to("web_cam_captures#edit", :id => "1")
    end

    it "routes to #create" do
      post("/web_cam_captures").should route_to("web_cam_captures#create")
    end

    it "routes to #update" do
      put("/web_cam_captures/1").should route_to("web_cam_captures#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/web_cam_captures/1").should route_to("web_cam_captures#destroy", :id => "1")
    end

  end
end
