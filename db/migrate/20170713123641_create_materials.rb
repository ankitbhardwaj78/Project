class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.integer :semester
      t.string :branch
      t.string :subject
      t.string :type
      t.string :title
     t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
