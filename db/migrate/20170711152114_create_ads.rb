class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.string :description
      t.string :contact
      t.string :college
      t.string :branch
      t.string :semester

      t.timestamps null: false
    end
  end
end
