class AddStatusToArticle < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :status, :string, null: true
  end
end
