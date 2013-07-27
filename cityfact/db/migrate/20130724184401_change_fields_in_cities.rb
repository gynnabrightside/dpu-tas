class ChangeFieldsInCities < ActiveRecord::Migration
	 def change
		add_column :cities, :title, :string
		add_column :cities, :description, :string
		add_column :cities, :dpu_team, :string
		add_column :cities, :funding, :float
		add_column :cities, :outputs, :string
		add_column :cities, :related_outputs, :string
		remove_column :cities, :percentage_of_population
		remove_column :cities, :in_a_nutshell
		remove_column :cities, :population
	  end
end
