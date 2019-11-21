require 'test_helper'

class AssetlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assetlist = assetlists(:one)
  end

  test "should get index" do
    get assetlists_url
    assert_response :success
  end

  test "should get new" do
    get new_assetlist_url
    assert_response :success
  end

  test "should create assetlist" do
    assert_difference('Assetlist.count') do
      post assetlists_url, params: { assetlist: { amt_buy: @assetlist.amt_buy, date_buy: @assetlist.date_buy, date_produce: @assetlist.date_produce, description: @assetlist.description, devicetype: @assetlist.devicetype, disk: @assetlist.disk, gateway: @assetlist.gateway, hostname: @assetlist.hostname, ipaddr: @assetlist.ipaddr, mac_wire: @assetlist.mac_wire, mac_wireless: @assetlist.mac_wireless, manufacture: @assetlist.manufacture, mgmtno: @assetlist.mgmtno, modelno: @assetlist.modelno, os: @assetlist.os, purpose: @assetlist.purpose, ram: @assetlist.ram, remarks: @assetlist.remarks, serialno: @assetlist.serialno, store_id: @assetlist.store_id, username: @assetlist.username } }
    end

    assert_redirected_to assetlist_url(Assetlist.last)
  end

  test "should show assetlist" do
    get assetlist_url(@assetlist)
    assert_response :success
  end

  test "should get edit" do
    get edit_assetlist_url(@assetlist)
    assert_response :success
  end

  test "should update assetlist" do
    patch assetlist_url(@assetlist), params: { assetlist: { amt_buy: @assetlist.amt_buy, date_buy: @assetlist.date_buy, date_produce: @assetlist.date_produce, description: @assetlist.description, devicetype: @assetlist.devicetype, disk: @assetlist.disk, gateway: @assetlist.gateway, hostname: @assetlist.hostname, ipaddr: @assetlist.ipaddr, mac_wire: @assetlist.mac_wire, mac_wireless: @assetlist.mac_wireless, manufacture: @assetlist.manufacture, mgmtno: @assetlist.mgmtno, modelno: @assetlist.modelno, os: @assetlist.os, purpose: @assetlist.purpose, ram: @assetlist.ram, remarks: @assetlist.remarks, serialno: @assetlist.serialno, store_id: @assetlist.store_id, username: @assetlist.username } }
    assert_redirected_to assetlist_url(@assetlist)
  end

  test "should destroy assetlist" do
    assert_difference('Assetlist.count', -1) do
      delete assetlist_url(@assetlist)
    end

    assert_redirected_to assetlists_url
  end
end
