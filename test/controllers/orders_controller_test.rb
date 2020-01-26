require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { cabin_type: @order.cabin_type, capacity: @order.capacity, capacity_units: @order.capacity_units, floor_count: @order.floor_count, floor_destination: @order.floor_destination, lift_type: @order.lift_type, lifts_count: @order.lifts_count, machine_mounting_room: @order.machine_mounting_room, opening_count: @order.opening_count, order_date: @order.order_date, shaft_depth: @order.shaft_depth, shaft_width: @order.shaft_width, stops_count: @order.stops_count, volume: @order.volume } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { cabin_type: @order.cabin_type, capacity: @order.capacity, capacity_units: @order.capacity_units, floor_count: @order.floor_count, floor_destination: @order.floor_destination, lift_type: @order.lift_type, lifts_count: @order.lifts_count, machine_mounting_room: @order.machine_mounting_room, opening_count: @order.opening_count, order_date: @order.order_date, shaft_depth: @order.shaft_depth, shaft_width: @order.shaft_width, stops_count: @order.stops_count, volume: @order.volume } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
