require 'test_helper'

class DslisTsControllerTest < ActionDispatch::IntegrationTest
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
      post dslists_url, params: { dslist: { company: @dslist.company, company_address: @dslist.company_address, company_tel: @dslist.company_tel, confirm: @dslist.confirm, gradu: @dslist.gradu, home_address: @dslist.home_address, home_tel: @dslist.home_tel, index_no: @dslist.index_no, mobile: @dslist.mobile, name: @dslist.name, no: @dslist.no, part: @dslist.part, title: @dslist.title } }
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
    patch dslist_url(@dslist), params: { dslist: { company: @dslist.company, company_address: @dslist.company_address, company_tel: @dslist.company_tel, confirm: @dslist.confirm, gradu: @dslist.gradu, home_address: @dslist.home_address, home_tel: @dslist.home_tel, index_no: @dslist.index_no, mobile: @dslist.mobile, name: @dslist.name, no: @dslist.no, part: @dslist.part, title: @dslist.title } }
    assert_redirected_to dslist_url(@dslist)
  end

  test "should destroy dslist" do
    assert_difference('Dslist.count', -1) do
      delete dslist_url(@dslist)
    end

    assert_redirected_to dslists_url
  end
end
