require 'spec_helper'

describe "web_cam_captures/new" do
  before(:each) do
    assign(:web_cam_capture, stub_model(WebCamCapture).as_new_record)
  end

  it "renders new web_cam_capture form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", web_cam_captures_path, "post" do
    end
  end
end
