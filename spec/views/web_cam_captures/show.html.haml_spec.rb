require 'spec_helper'

describe "web_cam_captures/show" do
  before(:each) do
    @web_cam_capture = assign(:web_cam_capture, stub_model(WebCamCapture))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
