class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :content
      t.references :question, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
