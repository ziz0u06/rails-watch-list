class UpdateBookmarksAgain < ActiveRecord::Migration[6.1]
  def change
    remove_reference :bookmarks, :movie
    remove_reference :bookmarks, :list
    add_reference :bookmarks, :movie, null: false, foreign_key: true
    add_reference :bookmarks, :list, null: false, foreign_key: true
  end
end
