require 'rails_helper'

RSpec.describe "houses/index", type: :view do
  before(:each) do
    assign(:houses, [
      House.create!(
        :price => 2,
        :airconType => "Aircon Type",
        :homeSqFt => "Home Sq Ft",
        :basementSqFt => "Basement Sq Ft",
        :bathroomCount => 3,
        :bedroomCount => 4,
        :buildingQualityType => "Building Quality Type",
        :buildingClass => "Building Class",
        :fireplace => "",
        :garageCarCount => 5,
        :garageSqFt => 6,
        :zipcode => 7,
        :latitude => 8,
        :longitude => 9,
        :poolCount => 10,
        :poolSize => 11,
        :city => "City",
        :county => "County",
        :state => "State",
        :yearBuilt => "Year Built",
        :roomCount => 12,
        :lastSellPrice => 13,
        :user_id => 14
      ),
      House.create!(
        :price => 2,
        :airconType => "Aircon Type",
        :homeSqFt => "Home Sq Ft",
        :basementSqFt => "Basement Sq Ft",
        :bathroomCount => 3,
        :bedroomCount => 4,
        :buildingQualityType => "Building Quality Type",
        :buildingClass => "Building Class",
        :fireplace => "",
        :garageCarCount => 5,
        :garageSqFt => 6,
        :zipcode => 7,
        :latitude => 8,
        :longitude => 9,
        :poolCount => 10,
        :poolSize => 11,
        :city => "City",
        :county => "County",
        :state => "State",
        :yearBuilt => "Year Built",
        :roomCount => 12,
        :lastSellPrice => 13,
        :user_id => 14
      )
    ])
  end

  it "renders a list of houses" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Aircon Type".to_s, :count => 2
    assert_select "tr>td", :text => "Home Sq Ft".to_s, :count => 2
    assert_select "tr>td", :text => "Basement Sq Ft".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Building Quality Type".to_s, :count => 2
    assert_select "tr>td", :text => "Building Class".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => 11.to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "County".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Year Built".to_s, :count => 2
    assert_select "tr>td", :text => 12.to_s, :count => 2
    assert_select "tr>td", :text => 13.to_s, :count => 2
    assert_select "tr>td", :text => 14.to_s, :count => 2
  end
end
