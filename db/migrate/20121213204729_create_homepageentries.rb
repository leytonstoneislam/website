class CreateHomepageentries < ActiveRecord::Migration
  def change
    create_table :homepageentries do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
