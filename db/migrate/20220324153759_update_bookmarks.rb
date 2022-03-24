class UpdateBookmarks < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookmarks, :movie_id
    remove_column :bookmarks, :list_id
    add_reference :bookmarks, :movie
    add_reference :bookmarks, :list
  end
end
