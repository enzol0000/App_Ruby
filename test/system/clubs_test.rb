require "application_system_test_case"

class ClubsTest < ApplicationSystemTestCase
  setup do
    @club = clubs(:one)
  end

  test "visiting the index" do
    visit clubs_url
    assert_selector "h1", text: "Clubs"
  end

  test "should create club" do
    visit clubs_url
    click_on "New club"

    fill_in "City", with: @club.city
    fill_in "Description", with: @club.description
    fill_in "Image", with: @club.image
    fill_in "Name", with: @club.name
    fill_in "Palmares", with: @club.palmares
    fill_in "Ranking", with: @club.ranking
    click_on "Create Club"

    assert_text "Club was successfully created"
    click_on "Back"
  end

  test "should update Club" do
    visit club_url(@club)
    click_on "Edit this club", match: :first

    fill_in "City", with: @club.city
    fill_in "Description", with: @club.description
    fill_in "Image", with: @club.image
    fill_in "Name", with: @club.name
    fill_in "Palmares", with: @club.palmares
    fill_in "Ranking", with: @club.ranking
    click_on "Update Club"

    assert_text "Club was successfully updated"
    click_on "Back"
  end

  test "should destroy Club" do
    visit club_url(@club)
    click_on "Destroy this club", match: :first

    assert_text "Club was successfully destroyed"
  end
end
