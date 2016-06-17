class AddUniquePasskeyToStudents < ActiveRecord::Migration
  def change
    add_column :students, :unique_passkey, :string
  end
end
