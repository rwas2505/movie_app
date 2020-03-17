class RemoveEnglishFromMovies < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :english, :string
  end
end
