require "application_system_test_case"

class PlayersTest < ApplicationSystemTestCase
  setup do
    @player = players(:one)
  end

  test "visiting the index" do
    visit players_url
    assert_selector "h1", text: "Players"
  end

  test "should create player" do
    visit players_url
    click_on "New player"

    fill_in "Blk", with: @player.blk
    fill_in "Club", with: @player.club_id
    fill_in "Draft", with: @player.draft
    fill_in "Height", with: @player.height
    fill_in "Image", with: @player.image
    fill_in "Min", with: @player.min
    fill_in "Name", with: @player.name
    fill_in "Post", with: @player.post
    fill_in "Ppg", with: @player.ppg
    fill_in "Reb", with: @player.reb
    fill_in "Stl", with: @player.stl
    click_on "Create Player"

    assert_text "Player was successfully created"
    click_on "Back"
  end

  test "should update Player" do
    visit player_url(@player)
    click_on "Edit this player", match: :first

    fill_in "Blk", with: @player.blk
    fill_in "Club", with: @player.club_id
    fill_in "Draft", with: @player.draft
    fill_in "Height", with: @player.height
    fill_in "Image", with: @player.image
    fill_in "Min", with: @player.min
    fill_in "Name", with: @player.name
    fill_in "Post", with: @player.post
    fill_in "Ppg", with: @player.ppg
    fill_in "Reb", with: @player.reb
    fill_in "Stl", with: @player.stl
    click_on "Update Player"

    assert_text "Player was successfully updated"
    click_on "Back"
  end

  test "should destroy Player" do
    visit player_url(@player)
    click_on "Destroy this player", match: :first

    assert_text "Player was successfully destroyed"
  end
end
