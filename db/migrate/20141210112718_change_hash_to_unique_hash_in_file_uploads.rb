class ChangeHashToUniqueHashInFileUploads < ActiveRecord::Migration
  def change
    rename_column :file_uploads, :hash, :unique_hash
  end
end