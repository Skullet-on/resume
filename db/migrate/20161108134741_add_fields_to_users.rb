class AddFieldsToUsers < ActiveRecord::Migration
  def self.up
    add_column    :users, :first_name,    :string
    add_column    :users, :last_name,     :string
    add_column    :users, :birthday,      :date
    add_column    :users, :phone,         :string
    add_column    :users, :skype,         :string
    add_column    :users, :git,           :string
    add_column    :users, :country,       :string
    add_column    :users, :city,          :string
    add_column    :users, :admin,         :boolean, null: false, default: false

    add_index     :users, :first_name
    add_index     :users, :last_name
    add_index     :users, :birthday
    add_index     :users, :phone
    add_index     :users, :skype
    add_index     :users, :git
    add_index     :users, :country
    add_index     :users, :city
    add_index     :users, :admin
  end
  def self.down
    remove_column   :users, :first_name,    :string
    remove_column   :users, :last_name,     :string
    remove_column   :users, :birthday,      :date
    remove_column   :users, :phone,         :string
    remove_column   :users, :skype,         :string
    remove_column   :users, :git,           :string
    remove_column   :users, :country,       :string
    remove_column   :users, :city,          :string
    remove_column   :users, :admin,         :boolean
  end
end
