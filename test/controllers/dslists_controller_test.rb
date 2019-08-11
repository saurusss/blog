require 'test_helper'

class DslistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dslist = dslists(:one)
  end

  test "should get index" do
    get dslists_url
    assert_response :success
  end

  test "should get new" do
    get new_dslist_url
    assert_response :success
  end

  test "should create dslist" do
    assert_difference('Dslist.count') do
      post dslists_url, params: { dslist: { Index_no: @dslist.Index_no, company: @dslist.company, company_address: @dslist.company_address, company_part: @dslist.company_part, company_tel: @dslist.company_tel, company_title: @dslist.company_title, confirm: @dslist.confirm, g_no: @dslist.g_no, g_year: @dslist.g_year, home_address: @dslist.home_address, home_tel: @dslist.home_tel, mobile: @dslist.mobile, name: @dslist.name } }
    end

    assert_redirected_to dslist_url(Dslist.last)
  end

  test "should show dslist" do
    get dslist_url(@dslist)
    assert_response :success
  end

  test "should get edit" do
    get edit_dslist_url(@dslist)
    assert_response :success
  end

  test "should update dslist" do
    patch dslist_url(@dslist), params: { dslist: { Index_no: @dslist.Index_no, company: @dslist.company, company_address: @dslist.company_address, company_part: @dslist.company_part, company_tel: @dslist.company_tel, company_title: @dslist.company_title, confirm: @dslist.confirm, g_no: @dslist.g_no, g_year: @dslist.g_year, home_address: @dslist.home_address, home_tel: @dslist.home_tel, mobile: @dslist.mobile, name: @dslist.name } }
    assert_redirected_to dslist_url(@dslist)
  end

  test "should destroy dslist" do
    assert_difference('Dslist.count', -1) do
      delete dslist_url(@dslist)
    end

    assert_redirected_to dslists_url
  end
end
