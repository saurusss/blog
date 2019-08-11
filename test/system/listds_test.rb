require "application_system_test_case"

class ListdsTest < ApplicationSystemTestCase
  setup do
    @listd = listds(:one)
  end

  test "visiting the index" do
    visit listds_url
    assert_selector "h1", text: "Listds"
  end

  test "creating a Listd" do
    visit listds_url
    click_on "New Listd"

    fill_in "Index no", with: @listd.Index_no
    fill_in "Company", with: @listd.company
    fill_in "Company address", with: @listd.company_address
    fill_in "Company part", with: @listd.company_part
    fill_in "Company tel", with: @listd.company_tel
    fill_in "Company title", with: @listd.company_title
    fill_in "Confirm", with: @listd.confirm
    fill_in "G no", with: @listd.g_no
    fill_in "G year", with: @listd.g_year
    fill_in "Home address", with: @listd.home_address
    fill_in "Home tel", with: @listd.home_tel
    fill_in "Mobile", with: @listd.mobile
    fill_in "Name", with: @listd.name
    click_on "Create Listd"

    assert_text "Listd was successfully created"
    click_on "Back"
  end

  test "updating a Listd" do
    visit listds_url
    click_on "Edit", match: :first

    fill_in "Index no", with: @listd.Index_no
    fill_in "Company", with: @listd.company
    fill_in "Company address", with: @listd.company_address
    fill_in "Company part", with: @listd.company_part
    fill_in "Company tel", with: @listd.company_tel
    fill_in "Company title", with: @listd.company_title
    fill_in "Confirm", with: @listd.confirm
    fill_in "G no", with: @listd.g_no
    fill_in "G year", with: @listd.g_year
    fill_in "Home address", with: @listd.home_address
    fill_in "Home tel", with: @listd.home_tel
    fill_in "Mobile", with: @listd.mobile
    fill_in "Name", with: @listd.name
    click_on "Update Listd"

    assert_text "Listd was successfully updated"
    click_on "Back"
  end

  test "destroying a Listd" do
    visit listds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Listd was successfully destroyed"
  end
end
