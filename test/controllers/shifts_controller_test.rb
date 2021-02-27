require 'test_helper'

class ShiftsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shift = shifts(:one)
  end

  test "should get index" do
    get shifts_url
    assert_response :success
  end

  test "should get new" do
    get new_shift_url
    assert_response :success
  end

  test "should create shift" do
    assert_difference('Shift.count') do
      post shifts_url, params: { shift: { friday: @shift.friday, member_id: @shift.member_id, monday: @shift.monday, saturday: @shift.saturday, sunday: @shift.sunday, team_id: @shift.team_id, thrusday: @shift.thrusday, time: @shift.time, tuesday: @shift.tuesday, wednesday: @shift.wednesday } }
    end

    assert_redirected_to shift_url(Shift.last)
  end

  test "should show shift" do
    get shift_url(@shift)
    assert_response :success
  end

  test "should get edit" do
    get edit_shift_url(@shift)
    assert_response :success
  end

  test "should update shift" do
    patch shift_url(@shift), params: { shift: { friday: @shift.friday, member_id: @shift.member_id, monday: @shift.monday, saturday: @shift.saturday, sunday: @shift.sunday, team_id: @shift.team_id, thrusday: @shift.thrusday, time: @shift.time, tuesday: @shift.tuesday, wednesday: @shift.wednesday } }
    assert_redirected_to shift_url(@shift)
  end

  test "should destroy shift" do
    assert_difference('Shift.count', -1) do
      delete shift_url(@shift)
    end

    assert_redirected_to shifts_url
  end
end
