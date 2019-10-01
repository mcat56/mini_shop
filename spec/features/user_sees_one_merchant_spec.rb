require 'rails_helper'

describe "user sees one article" do
  describe "they visit merchants/:id" do
    it "displays merchant information" do
      merchant_1 = Merchant.create!(name: "Henry", address: "410 Bleeker Street", city: "Philadelphia", state: "PA", zip: "19107" )
      merchant_2 = Merchant.create!(name: "Olivia", address: "384 Spring Ave", city: "New York", state: "NY", zip: "11221" )
      merchant_3 = Merchant.create!(name: "Ava", address: "930 Sunrise Blvd", city: "San Diego", state: "CA", zip: "92103" )

      visit 'merchants/1'

      expect(page).to have_content(merchant_1.name)
      expect(page).to have_content(merchant_1.address)
      expect(page).to have_content(merchant_1.city)
      expect(page).to have_content(merchant_1.state)
      expect(page).to have_content(merchant_1.zip)

    end
  end
end
 