require 'rails_helper'

RSpec.describe "houses/new", type: :view do
  before(:each) do
    assign(:house, House.new(
      :price => 1,
      :airconType => "MyString",
      :homeSqFt => "MyString",
      :basementSqFt => "MyString",
      :bathroomCount => 1,
      :bedroomCount => 1,
      :buildingQualityType => "MyString",
      :buildingClass => "MyString",
      :fireplace => "",
      :garageCarCount => 1,
      :garageSqFt => 1,
      :zipcode => 1,
      :latitude => 1,
      :longitude => 1,
      :poolCount => 1,
      :poolSize => 1,
      :city => "MyString",
      :county => "MyString",
      :state => "MyString",
      :yearBuilt => "MyString",
      :roomCount => 1,
      :lastSellPrice => 1,
      :user_id => 1
    ))
  end

  it "renders new house form" do
    render

    assert_select "form[action=?][method=?]", houses_path, "post" do

      assert_select "input[name=?]", "house[price]"

      assert_select "input[name=?]", "house[airconType]"

      assert_select "input[name=?]", "house[homeSqFt]"

      assert_select "input[name=?]", "house[basementSqFt]"

      assert_select "input[name=?]", "house[bathroomCount]"

      assert_select "input[name=?]", "house[bedroomCount]"

      assert_select "input[name=?]", "house[buildingQualityType]"

      assert_select "input[name=?]", "house[buildingClass]"

      assert_select "input[name=?]", "house[fireplace]"

      assert_select "input[name=?]", "house[garageCarCount]"

      assert_select "input[name=?]", "house[garageSqFt]"

      assert_select "input[name=?]", "house[zipcode]"

      assert_select "input[name=?]", "house[latitude]"

      assert_select "input[name=?]", "house[longitude]"

      assert_select "input[name=?]", "house[poolCount]"

      assert_select "input[name=?]", "house[poolSize]"

      assert_select "input[name=?]", "house[city]"

      assert_select "input[name=?]", "house[county]"

      assert_select "input[name=?]", "house[state]"

      assert_select "input[name=?]", "house[yearBuilt]"

      assert_select "input[name=?]", "house[roomCount]"

      assert_select "input[name=?]", "house[lastSellPrice]"

      assert_select "input[name=?]", "house[user_id]"
    end
  end
end
