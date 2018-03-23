class RenameMuseumNameColumnToMuseums < ActiveRecord::Migration[5.1]
  def change
  	rename_column :museums, :MuseumName, :museum_name
  	rename_column :museums, :MuseumDetail, :museum_detail
  	rename_column :museums, :ImageId, :image_id
  end
end
