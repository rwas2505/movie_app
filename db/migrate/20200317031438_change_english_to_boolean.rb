class ChangeEnglishToBoolean < ActiveRecord::Migration[6.0]
  def change
    #This is broken so I removed english column in next migration then added it back as boolean
    # USING english::boolean
    # change_column :movies, :english, :boolean
  end
end
