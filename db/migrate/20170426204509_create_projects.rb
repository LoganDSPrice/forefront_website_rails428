class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string  :name
      t.string  :team_name
      t.string  :location
      t.integer :area
      t.date    :completion_date
      t.text    :description
      t.boolean :featured, default: false
      t.string  :category

      t.timestamps
    end
  end
end
