class Addfieldstocities < ActiveRecord::Migration
  def change
		add_column :cities, :population, :float
		add_column :cities, :percentage_of_population, :string
		add_column :cities, :in_a_nutshell, :string
	  end
end
