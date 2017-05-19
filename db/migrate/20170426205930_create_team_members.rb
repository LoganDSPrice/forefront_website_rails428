class CreateTeamMembers < ActiveRecord::Migration
  def change
    create_table :team_members do |t|
      t.string :first_name, null: false
      t.string :last_name
      t.string :role
      t.text   :bio
      t.text   :primary_image
      t.text   :secondary_image

      t.timestamps
    end
  end
end
