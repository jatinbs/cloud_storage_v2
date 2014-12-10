class RemoveUniqueHashFromFileUploads < ActiveRecord::Migration
  def change
    remove_column :file_uploads, :unique_hash, :string
  end
end
