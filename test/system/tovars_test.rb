require "application_system_test_case"

class TovarsTest < ApplicationSystemTestCase
  setup do
    @tovar = tovars(:one)
  end

  test "visiting the index" do
    visit tovars_url
    assert_selector "h1", text: "Tovars"
  end

  test "should create tovar" do
    visit tovars_url
    click_on "New tovar"

    fill_in "Articul", with: @tovar.articul
    fill_in "Count", with: @tovar.count
    fill_in "Metric", with: @tovar.metric
    fill_in "Name", with: @tovar.name
    fill_in "Params data", with: @tovar.params_data
    fill_in "Price", with: @tovar.price
    fill_in "Price opt", with: @tovar.price_opt
    fill_in "Price rozdr", with: @tovar.price_rozdr
    fill_in "Sklad locate", with: @tovar.sklad_locate
    fill_in "Time on sklad", with: @tovar.time_on_sklad
    click_on "Create Tovar"

    assert_text "Tovar was successfully created"
    click_on "Back"
  end

  test "should update Tovar" do
    visit tovar_url(@tovar)
    click_on "Edit this tovar", match: :first

    fill_in "Articul", with: @tovar.articul
    fill_in "Count", with: @tovar.count
    fill_in "Metric", with: @tovar.metric
    fill_in "Name", with: @tovar.name
    fill_in "Params data", with: @tovar.params_data
    fill_in "Price", with: @tovar.price
    fill_in "Price opt", with: @tovar.price_opt
    fill_in "Price rozdr", with: @tovar.price_rozdr
    fill_in "Sklad locate", with: @tovar.sklad_locate
    fill_in "Time on sklad", with: @tovar.time_on_sklad
    click_on "Update Tovar"

    assert_text "Tovar was successfully updated"
    click_on "Back"
  end

  test "should destroy Tovar" do
    visit tovar_url(@tovar)
    click_on "Destroy this tovar", match: :first

    assert_text "Tovar was successfully destroyed"
  end
end
