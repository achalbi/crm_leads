require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "creating a Order" do
    visit orders_url
    click_on "New Order"

    fill_in "Cabin type", with: @order.cabin_type
    fill_in "Capacity", with: @order.capacity
    fill_in "Capacity units", with: @order.capacity_units
    fill_in "Floor count", with: @order.floor_count
    fill_in "Floor destination", with: @order.floor_destination
    fill_in "Lift type", with: @order.lift_type
    fill_in "Lifts count", with: @order.lifts_count
    fill_in "Machine mounting room", with: @order.machine_mounting_room
    fill_in "Opening count", with: @order.opening_count
    fill_in "Order date", with: @order.order_date
    fill_in "Shaft depth", with: @order.shaft_depth
    fill_in "Shaft width", with: @order.shaft_width
    fill_in "Stops count", with: @order.stops_count
    fill_in "Volume", with: @order.volume
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "updating a Order" do
    visit orders_url
    click_on "Edit", match: :first

    fill_in "Cabin type", with: @order.cabin_type
    fill_in "Capacity", with: @order.capacity
    fill_in "Capacity units", with: @order.capacity_units
    fill_in "Floor count", with: @order.floor_count
    fill_in "Floor destination", with: @order.floor_destination
    fill_in "Lift type", with: @order.lift_type
    fill_in "Lifts count", with: @order.lifts_count
    fill_in "Machine mounting room", with: @order.machine_mounting_room
    fill_in "Opening count", with: @order.opening_count
    fill_in "Order date", with: @order.order_date
    fill_in "Shaft depth", with: @order.shaft_depth
    fill_in "Shaft width", with: @order.shaft_width
    fill_in "Stops count", with: @order.stops_count
    fill_in "Volume", with: @order.volume
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "destroying a Order" do
    visit orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order was successfully destroyed"
  end
end
