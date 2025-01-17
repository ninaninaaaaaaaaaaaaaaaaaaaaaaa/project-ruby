class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.integer :role, default: 2 # За замовчуванням студент

      t.timestamps
    end
  end
end
