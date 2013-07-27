class ChangeFieldsInCitiesAgain < ActiveRecord::Migration
  def change 
  	remove_column :cities, :name
  end
end
