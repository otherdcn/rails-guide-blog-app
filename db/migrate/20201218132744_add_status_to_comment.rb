class AddStatusToComment < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :status, :string, null: true
  end
end
