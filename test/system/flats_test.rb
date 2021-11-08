require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the root page" do
    visit '/'

    assert_selector "h1", text: "Flats"
  end

  test "visiting a show page for one flat" do
    visit '/flats/145'

    assert_selector "h1", text: "Charm at the Steps of the Sacre Coeur/Montmartre"
  end
end
