class ChangeTitleToHashInFileUploads < ActiveRecord::Migration
  def change
    rename_column :file_uploads, :title, :hash
  end
end
