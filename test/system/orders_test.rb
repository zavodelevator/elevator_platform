require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "should create order" do
    visit orders_url
    click_on "New order"

    fill_in "Date send", with: @order.date_send
    fill_in "Ful price", with: @order.ful_price
    fill_in "Notes", with: @order.notes
    fill_in "Order status", with: @order.order_status
    fill_in "Params for send", with: @order.params_for_send
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "should update Order" do
    visit order_url(@order)
    click_on "Edit this order", match: :first

    fill_in "Date send", with: @order.date_send
    fill_in "Ful price", with: @order.ful_price
    fill_in "Notes", with: @order.notes
    fill_in "Order status", with: @order.order_status
    fill_in "Params for send", with: @order.params_for_send
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "should destroy Order" do
    visit order_url(@order)
    click_on "Destroy this order", match: :first

    assert_text "Order was successfully destroyed"
  end
end
