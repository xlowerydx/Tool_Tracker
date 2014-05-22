require 'spec_helper'

describe "web_cam_captures/edit" do
  before(:each) do
    @web_cam_capture = assign(:web_cam_capture, stub_model(WebCamCapture))
  end

  it "renders the edit web_cam_capture form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", web_cam_capture_path(@web_cam_capture), "post" do
    end
  end
end
