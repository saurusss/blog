require 'test_helper'

class ListdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listd = listds(:one)
  end

  test "should get index" do
    get listds_url
    assert_response :success
  end

  test "should get new" do
    get new_listd_url
    assert_response :success
  end

  test "should create listd" do
    assert_difference('Listd.count') do
      post listds_url, params: { listd: { Index_no: @listd.Index_no, company: @listd.company, company_address: @listd.company_address, company_part: @listd.company_part, company_tel: @listd.company_tel, company_title: @listd.company_title, confirm: @listd.confirm, g_no: @listd.g_no, g_year: @listd.g_year, home_address: @listd.home_address, home_tel: @listd.home_tel, mobile: @listd.mobile, name: @listd.name } }
    end

    assert_redirected_to listd_url(Listd.last)
  end

  test "should show listd" do
    get listd_url(@listd)
    assert_response :success
  end

  test "should get edit" do
    get edit_listd_url(@listd)
    assert_response :success
  end

  test "should update listd" do
    patch listd_url(@listd), params: { listd: { Index_no: @listd.Index_no, company: @listd.company, company_address: @listd.company_address, company_part: @listd.company_part, company_tel: @listd.company_tel, company_title: @listd.company_title, confirm: @listd.confirm, g_no: @listd.g_no, g_year: @listd.g_year, home_address: @listd.home_address, home_tel: @listd.home_tel, mobile: @listd.mobile, name: @listd.name } }
    assert_redirected_to listd_url(@listd)
  end

  test "should destroy listd" do
    assert_difference('Listd.count', -1) do
      delete listd_url(@listd)
    end

    assert_redirected_to listds_url
  end
end
