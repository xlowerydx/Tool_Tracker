json.array!(@web_cam_captures) do |web_cam_capture|
  json.extract! web_cam_capture, :id
  json.url web_cam_capture_url(web_cam_capture, format: :json)
end
