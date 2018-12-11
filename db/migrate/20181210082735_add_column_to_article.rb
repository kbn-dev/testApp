class AddColumnToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :non_public, :boolean
  end
end
