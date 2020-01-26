require 'test_helper'

class EnquiriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enquiry = enquiries(:one)
  end

  test "should get index" do
    get enquiries_url
    assert_response :success
  end

  test "should get new" do
    get new_enquiry_url
    assert_response :success
  end

  test "should create enquiry" do
    assert_difference('Enquiry.count') do
      post enquiries_url, params: { enquiry: { cabin_type: @enquiry.cabin_type, capacity: @enquiry.capacity, capacity_units: @enquiry.capacity_units, enquiry_date: @enquiry.enquiry_date, floor_count: @enquiry.floor_count, floor_destination: @enquiry.floor_destination, lift_type: @enquiry.lift_type, lifts_count: @enquiry.lifts_count, machine_mounting_room: @enquiry.machine_mounting_room, openings_count: @enquiry.openings_count, shaft_depth: @enquiry.shaft_depth, shaft_width: @enquiry.shaft_width, stops_count: @enquiry.stops_count } }
    end

    assert_redirected_to enquiry_url(Enquiry.last)
  end

  test "should show enquiry" do
    get enquiry_url(@enquiry)
    assert_response :success
  end

  test "should get edit" do
    get edit_enquiry_url(@enquiry)
    assert_response :success
  end

  test "should update enquiry" do
    patch enquiry_url(@enquiry), params: { enquiry: { cabin_type: @enquiry.cabin_type, capacity: @enquiry.capacity, capacity_units: @enquiry.capacity_units, enquiry_date: @enquiry.enquiry_date, floor_count: @enquiry.floor_count, floor_destination: @enquiry.floor_destination, lift_type: @enquiry.lift_type, lifts_count: @enquiry.lifts_count, machine_mounting_room: @enquiry.machine_mounting_room, openings_count: @enquiry.openings_count, shaft_depth: @enquiry.shaft_depth, shaft_width: @enquiry.shaft_width, stops_count: @enquiry.stops_count } }
    assert_redirected_to enquiry_url(@enquiry)
  end

  test "should destroy enquiry" do
    assert_difference('Enquiry.count', -1) do
      delete enquiry_url(@enquiry)
    end

    assert_redirected_to enquiries_url
  end
end
