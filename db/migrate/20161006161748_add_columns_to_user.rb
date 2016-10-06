class AddColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    ## Database authenticatable
    add_column :t_usuario, :encrypted_password, :string, null: false, default: ""

    ## Recoverable
    add_column :t_usuario, :reset_password_token, :string
    add_column :t_usuario, :reset_password_sent_at, :datetime

    ## Rememberable
    add_column :t_usuario, :remember_created_at, :datetime

    ## Trackable
    add_column :t_usuario, :sign_in_count, :int, default: 0, null: false
    add_column :t_usuario, :current_sign_in_at, :datetime
    add_column :t_usuario, :last_sign_in_at, :datetime
    add_column :t_usuario, :current_sign_in_ip, :inet
    add_column :t_usuario, :last_sign_in_ip, :inet

    add_column :t_usuario, :created_at, :datetime
    add_column :t_usuario, :updated_at, :datetime


    add_index :t_usuario, :email,                unique: true
    add_index :t_usuario, :reset_password_token, unique: true
  end
end
