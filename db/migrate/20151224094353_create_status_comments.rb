class CreateStatusComments < ActiveRecord::Migration
  def change
    create_table :status_comments do |t|
      t.references :status, index: true, foreign_key: true
      t.integer :user_id
      t.text :content

      t.timestamps
    end
  end
end
