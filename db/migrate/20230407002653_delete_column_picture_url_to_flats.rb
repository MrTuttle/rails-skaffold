class DeleteColumnPictureUrlToFlats < ActiveRecord::Migration[7.0]
  def change
    remove_column :flats, :picture_url
  end
end
