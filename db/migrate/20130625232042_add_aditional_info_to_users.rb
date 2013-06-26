class AddAditionalInfoToUsers < ActiveRecord::Migration
  def up
    add_column :users, :name, :string
    add_column :users, :cpf, :string
  end

  def down
    remove_column :users, :name, :string
    remove_column :users, :cpf, :string
  end
end
