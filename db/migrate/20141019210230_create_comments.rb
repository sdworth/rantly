class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :user, index: true
      t.belongs_to :commented, index: true
      t.string :commented_type
      t.text :body

      t.timestamps
    end
  end
end
