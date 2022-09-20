require "application_system_test_case"

class WorkersTest < ApplicationSystemTestCase
  setup do
    @worker = workers(:one)
  end

  test "visiting the index" do
    visit workers_url
    assert_selector "h1", text: "Workers"
  end

  test "should create worker" do
    visit workers_url
    click_on "New worker"

    fill_in "Email", with: @worker.email
    fill_in "First name", with: @worker.first_name
    fill_in "Last name", with: @worker.last_name
    fill_in "Name for contract", with: @worker.name_for_contract
    fill_in "Phone", with: @worker.phone
    fill_in "Rather name", with: @worker.rather_name
    fill_in "Role", with: @worker.role
    click_on "Create Worker"

    assert_text "Worker was successfully created"
    click_on "Back"
  end

  test "should update Worker" do
    visit worker_url(@worker)
    click_on "Edit this worker", match: :first

    fill_in "Email", with: @worker.email
    fill_in "First name", with: @worker.first_name
    fill_in "Last name", with: @worker.last_name
    fill_in "Name for contract", with: @worker.name_for_contract
    fill_in "Phone", with: @worker.phone
    fill_in "Rather name", with: @worker.rather_name
    fill_in "Role", with: @worker.role
    click_on "Update Worker"

    assert_text "Worker was successfully updated"
    click_on "Back"
  end

  test "should destroy Worker" do
    visit worker_url(@worker)
    click_on "Destroy this worker", match: :first

    assert_text "Worker was successfully destroyed"
  end
end
