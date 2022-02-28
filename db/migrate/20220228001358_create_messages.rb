class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :username

      t.string :from_user
      t.string :to_user

      t.text :message

      t.timestamps
    end
  end
end
