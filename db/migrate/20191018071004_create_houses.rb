class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.integer :results #this is the price (in $) data I am changing it to results to mach what the DS app says
      t.string :airconType
      t.string :homeSqFt
      t.string :basementSqFt 
      t.integer :bathroomcnt # produced via DS app POSTED from our front end
      t.integer :bedroomcnt # produced via DS app POSTED from our front end
      t.string :buildingQualityType
      t.string :buildingClass
      t.boolean :fireplace
      t.integer :garageCarCnt
      t.integer :garageSqFt
      t.integer :zipcode
      t.integer :latitude
      t.integer :longitude
      t.integer :poolCount
      t.integer :poolSize
      t.string :city
      t.string :county
      t.string :state
      t.string :yearBuilt
      t.integer :roomCount
      t.integer :lastSellPrice
      t.integer :user_id
      t.boolean :isAvailable
      

      t.timestamps
    end
  end
end
