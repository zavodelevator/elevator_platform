require "application_system_test_case"

class OrganizationsTest < ApplicationSystemTestCase
  setup do
    @organization = organizations(:one)
  end

  test "visiting the index" do
    visit organizations_url
    assert_selector "h1", text: "Organizations"
  end

  test "should create organization" do
    visit organizations_url
    click_on "New organization"

    fill_in "Adress", with: @organization.adress
    fill_in "Ederpou", with: @organization.ederpou
    fill_in "Factic adress", with: @organization.factic_adress
    fill_in "Ipn", with: @organization.ipn
    fill_in "Mail", with: @organization.mail
    fill_in "Mfo", with: @organization.mfo
    fill_in "Name", with: @organization.name
    fill_in "Name and rquesit bank", with: @organization.name_and_rquesit_bank
    fill_in "Number caunt bank", with: @organization.number_caunt_bank
    fill_in "Phone", with: @organization.phone
    fill_in "Send adress", with: @organization.send_adress
    fill_in "Short name", with: @organization.short_name
    fill_in "Type rent", with: @organization.type_rent
    click_on "Create Organization"

    assert_text "Organization was successfully created"
    click_on "Back"
  end

  test "should update Organization" do
    visit organization_url(@organization)
    click_on "Edit this organization", match: :first

    fill_in "Adress", with: @organization.adress
    fill_in "Ederpou", with: @organization.ederpou
    fill_in "Factic adress", with: @organization.factic_adress
    fill_in "Ipn", with: @organization.ipn
    fill_in "Mail", with: @organization.mail
    fill_in "Mfo", with: @organization.mfo
    fill_in "Name", with: @organization.name
    fill_in "Name and rquesit bank", with: @organization.name_and_rquesit_bank
    fill_in "Number caunt bank", with: @organization.number_caunt_bank
    fill_in "Phone", with: @organization.phone
    fill_in "Send adress", with: @organization.send_adress
    fill_in "Short name", with: @organization.short_name
    fill_in "Type rent", with: @organization.type_rent
    click_on "Update Organization"

    assert_text "Organization was successfully updated"
    click_on "Back"
  end

  test "should destroy Organization" do
    visit organization_url(@organization)
    click_on "Destroy this organization", match: :first

    assert_text "Organization was successfully destroyed"
  end
end
