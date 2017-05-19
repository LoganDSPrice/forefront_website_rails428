class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string      :url, null: false
      t.references  :videoable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
