class FileUploadsController < ApplicationController
  before_action :set_file_upload, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @file_uploads = FileUpload.all
    respond_with(@file_uploads)
  end

  def show
    respond_with(@file_upload)
  end

  def new
    @file_upload = FileUpload.new
    respond_with(@file_upload)
  end

  def edit
  end

  def create
    @file_upload = FileUpload.new(file_upload_params)
    @file_upload.save
    respond_with(@file_upload)
  end

  def update
    @file_upload.update(file_upload_params)
    respond_with(@file_upload)
  end

  def destroy
    @file_upload.destroy
    respond_with(@file_upload)
  end

  private
    def set_file_upload
      @file_upload = FileUpload.find(params[:id])
    end

    def file_upload_params
      params.require(:file_upload).permit(:title, :user_id, :file)
    end
end
