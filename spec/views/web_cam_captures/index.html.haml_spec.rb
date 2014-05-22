require 'spec_helper'

describe "web_cam_captures/index" do
  before(:each) do
    assign(:web_cam_captures, [
      stub_model(WebCamCapture),
      stub_model(WebCamCapture)
    ])
  end

  it "renders a list of web_cam_captures" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
