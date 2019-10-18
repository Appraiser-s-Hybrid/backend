require 'rails_helper'

RSpec.describe "houses/show", type: :view do
  before(:each) do
    @house = assign(:house, House.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Aircon Type/)
    expect(rendered).to match(/Home Sq Ft/)
    expect(rendered).to match(/Basement Sq Ft/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Building Quality Type/)
    expect(rendered).to match(/Building Class/)
    expect(rendered).to match(//)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/11/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/County/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Year Built/)
    expect(rendered).to match(/12/)
    expect(rendered).to match(/13/)
    expect(rendered).to match(/14/)
  end
end
