class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.string :email
      t.string :password_digest
         
      t.timestamps
      t.index [:user_id, :created_at]
    end
  end
end
