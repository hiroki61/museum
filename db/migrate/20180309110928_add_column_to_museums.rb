class AddColumnToMuseums < ActiveRecord::Migration[5.1]
  def change
    add_column :museums, :MuseumName, :string
    add_column :museums, :MuseumDetail, :string
    add_column :museums, :ImageId, :text
  end
end
