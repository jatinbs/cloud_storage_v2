class CreateFileUploads < ActiveRecord::Migration
  def change
    create_table :file_uploads do |t|
      t.string :title
      t.references :user, index: true

      t.timestamps
    end
  end
end
