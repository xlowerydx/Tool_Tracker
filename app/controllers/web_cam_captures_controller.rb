class WebCamCapturesController < ApplicationController
  before_action :set_web_cam_capture, only: [:show, :edit, :update, :destroy]
  helper :headshot

  # GET /web_cam_captures
  # GET /web_cam_captures.json
  def index
    @web_cam_captures = WebCamCapture.all
  end

  # GET /web_cam_captures/1
  # GET /web_cam_captures/1.json
  def show
  end

  # GET /web_cam_captures/new
  def new
    @web_cam_capture = WebCamCapture.new
  end

  # GET /web_cam_captures/1/edit
  def edit
  end

  # POST /web_cam_captures
  # POST /web_cam_captures.json
  def create
    @web_cam_capture = WebCamCapture.new(web_cam_capture_params)

    respond_to do |format|
      if @web_cam_capture.save
        format.html { redirect_to @web_cam_capture, notice: 'Web cam capture was successfully created.' }
        format.json { render action: 'show', status: :created, location: @web_cam_capture }
      else
        format.html { render action: 'new' }
        format.json { render json: @web_cam_capture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web_cam_captures/1
  # PATCH/PUT /web_cam_captures/1.json
  def update
    respond_to do |format|
      if @web_cam_capture.update(web_cam_capture_params)
        format.html { redirect_to @web_cam_capture, notice: 'Web cam capture was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @web_cam_capture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_cam_captures/1
  # DELETE /web_cam_captures/1.json
  def destroy
    @web_cam_capture.destroy
    respond_to do |format|
      format.html { redirect_to web_cam_captures_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_cam_capture
      @web_cam_capture = WebCamCapture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def web_cam_capture_params
      params[:web_cam_capture]
    end
end
