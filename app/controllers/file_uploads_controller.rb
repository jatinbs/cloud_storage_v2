class FileUploadsController < ApplicationController

  before_action :set_file_upload, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  respond_to :html

  def index
    @file_uploads = current_user.file_uploads.all
    respond_with(@file_uploads)
  end

  def show
    respond_with(@file_upload)
  end

  def new
    @file_upload = current_user.file_uploads.new
    respond_with(@file_upload)
  end

  def create
    @file_upload = current_user.file_uploads.new(file_upload_params)
    @file_upload.save
    render plain: @file_upload.file_hash
    return
    respond_with(@file_upload)
  end

  def destroy
    @file_upload.destroy
    respond_with(@file_upload)
  end

  private
    def set_file_upload
      @file_upload = FileUpload.find(params[:id])
      if !user_signed_in?
        redirect_to new_user_session_path
      elsif current_user.id != @file_upload.user.id
        redirect_to file_uploads_path
      end
    end

    def file_upload_params
      params.require(:file_upload).permit(:title, :user_id, :file)
    end
end
