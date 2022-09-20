require "test_helper"

class OueOrganizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oue_organization = oue_organizations(:one)
  end

  test "should get index" do
    get oue_organizations_url
    assert_response :success
  end

  test "should get new" do
    get new_oue_organization_url
    assert_response :success
  end

  test "should create oue_organization" do
    assert_difference("OueOrganization.count") do
      post oue_organizations_url, params: { oue_organization: { adress: @oue_organization.adress, ederpou: @oue_organization.ederpou, factic_adress: @oue_organization.factic_adress, ipn: @oue_organization.ipn, mail: @oue_organization.mail, name: @oue_organization.name, phone: @oue_organization.phone, send_adress: @oue_organization.send_adress, short_name: @oue_organization.short_name, type_rent: @oue_organization.type_rent } }
    end

    assert_redirected_to oue_organization_url(OueOrganization.last)
  end

  test "should show oue_organization" do
    get oue_organization_url(@oue_organization)
    assert_response :success
  end

  test "should get edit" do
    get edit_oue_organization_url(@oue_organization)
    assert_response :success
  end

  test "should update oue_organization" do
    patch oue_organization_url(@oue_organization), params: { oue_organization: { adress: @oue_organization.adress, ederpou: @oue_organization.ederpou, factic_adress: @oue_organization.factic_adress, ipn: @oue_organization.ipn, mail: @oue_organization.mail, name: @oue_organization.name, phone: @oue_organization.phone, send_adress: @oue_organization.send_adress, short_name: @oue_organization.short_name, type_rent: @oue_organization.type_rent } }
    assert_redirected_to oue_organization_url(@oue_organization)
  end

  test "should destroy oue_organization" do
    assert_difference("OueOrganization.count", -1) do
      delete oue_organization_url(@oue_organization)
    end

    assert_redirected_to oue_organizations_url
  end
end
