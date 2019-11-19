require "application_system_test_case"

class AssetlistsTest < ApplicationSystemTestCase
  setup do
    @assetlist = assetlists(:one)
  end

  test "visiting the index" do
    visit assetlists_url
    assert_selector "h1", text: "Assetlists"
  end

  test "creating a Assetlist" do
    visit assetlists_url
    click_on "New Assetlist"

    fill_in "Amt buy", with: @assetlist.amt_buy
    fill_in "Date buy", with: @assetlist.date_buy
    fill_in "Date produce", with: @assetlist.date_produce
    fill_in "Dept", with: @assetlist.dept
    fill_in "Description", with: @assetlist.description
    fill_in "Devicetype", with: @assetlist.devicetype
    fill_in "Disk", with: @assetlist.disk
    fill_in "Gateway", with: @assetlist.gateway
    fill_in "Hostname", with: @assetlist.hostname
    fill_in "Ipaddr", with: @assetlist.ipaddr
    fill_in "Mac wire", with: @assetlist.mac_wire
    fill_in "Mac wireless", with: @assetlist.mac_wireless
    fill_in "Manufacture", with: @assetlist.manufacture
    fill_in "Mgmtno", with: @assetlist.mgmtno
    fill_in "Modelno", with: @assetlist.modelno
    fill_in "Os", with: @assetlist.os
    fill_in "Purpose", with: @assetlist.purpose
    fill_in "Ram", with: @assetlist.ram
    fill_in "Remarks", with: @assetlist.remarks
    fill_in "Serialno", with: @assetlist.serialno
    fill_in "Username", with: @assetlist.username
    click_on "Create Assetlist"

    assert_text "Assetlist was successfully created"
    click_on "Back"
  end

  test "updating a Assetlist" do
    visit assetlists_url
    click_on "Edit", match: :first

    fill_in "Amt buy", with: @assetlist.amt_buy
    fill_in "Date buy", with: @assetlist.date_buy
    fill_in "Date produce", with: @assetlist.date_produce
    fill_in "Dept", with: @assetlist.dept
    fill_in "Description", with: @assetlist.description
    fill_in "Devicetype", with: @assetlist.devicetype
    fill_in "Disk", with: @assetlist.disk
    fill_in "Gateway", with: @assetlist.gateway
    fill_in "Hostname", with: @assetlist.hostname
    fill_in "Ipaddr", with: @assetlist.ipaddr
    fill_in "Mac wire", with: @assetlist.mac_wire
    fill_in "Mac wireless", with: @assetlist.mac_wireless
    fill_in "Manufacture", with: @assetlist.manufacture
    fill_in "Mgmtno", with: @assetlist.mgmtno
    fill_in "Modelno", with: @assetlist.modelno
    fill_in "Os", with: @assetlist.os
    fill_in "Purpose", with: @assetlist.purpose
    fill_in "Ram", with: @assetlist.ram
    fill_in "Remarks", with: @assetlist.remarks
    fill_in "Serialno", with: @assetlist.serialno
    fill_in "Username", with: @assetlist.username
    click_on "Update Assetlist"

    assert_text "Assetlist was successfully updated"
    click_on "Back"
  end

  test "destroying a Assetlist" do
    visit assetlists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Assetlist was successfully destroyed"
  end
end
