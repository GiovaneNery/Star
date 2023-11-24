class AddProfessionalPositionToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :professional_position, :string
  end
end
