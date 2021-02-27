require "application_system_test_case"

class ShiftsTest < ApplicationSystemTestCase
  setup do
    @shift = shifts(:one)
  end

  test "visiting the index" do
    visit shifts_url
    assert_selector "h1", text: "Shifts"
  end

  test "creating a Shift" do
    visit shifts_url
    click_on "New Shift"

    check "Friday" if @shift.friday
    fill_in "Member", with: @shift.member_id
    check "Monday" if @shift.monday
    check "Saturday" if @shift.saturday
    check "Sunday" if @shift.sunday
    fill_in "Team", with: @shift.team_id
    check "Thrusday" if @shift.thrusday
    fill_in "Time", with: @shift.time
    check "Tuesday" if @shift.tuesday
    check "Wednesday" if @shift.wednesday
    click_on "Create Shift"

    assert_text "Shift was successfully created"
    click_on "Back"
  end

  test "updating a Shift" do
    visit shifts_url
    click_on "Edit", match: :first

    check "Friday" if @shift.friday
    fill_in "Member", with: @shift.member_id
    check "Monday" if @shift.monday
    check "Saturday" if @shift.saturday
    check "Sunday" if @shift.sunday
    fill_in "Team", with: @shift.team_id
    check "Thrusday" if @shift.thrusday
    fill_in "Time", with: @shift.time
    check "Tuesday" if @shift.tuesday
    check "Wednesday" if @shift.wednesday
    click_on "Update Shift"

    assert_text "Shift was successfully updated"
    click_on "Back"
  end

  test "destroying a Shift" do
    visit shifts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shift was successfully destroyed"
  end
end
