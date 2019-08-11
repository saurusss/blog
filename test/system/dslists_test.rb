require "application_system_test_case"

class DslistsTest < ApplicationSystemTestCase
  setup do
    @dslist = dslists(:one)
  end

  test "visiting the index" do
    visit dslists_url
    assert_selector "h1", text: "Dslists"
  end

  test "creating a Dslist" do
    visit dslists_url
    click_on "New Dslist"

    fill_in "Index no", with: @dslist.Index_no
    fill_in "Company", with: @dslist.company
    fill_in "Company address", with: @dslist.company_address
    fill_in "Company part", with: @dslist.company_part
    fill_in "Company tel", with: @dslist.company_tel
    fill_in "Company title", with: @dslist.company_title
    fill_in "Confirm", with: @dslist.confirm
    fill_in "G no", with: @dslist.g_no
    fill_in "G year", with: @dslist.g_year
    fill_in "Home address", with: @dslist.home_address
    fill_in "Home tel", with: @dslist.home_tel
    fill_in "Mobile", with: @dslist.mobile
    fill_in "Name", with: @dslist.name
    click_on "Create Dslist"

    assert_text "Dslist was successfully created"
    click_on "Back"
  end

  test "updating a Dslist" do
    visit dslists_url
    click_on "Edit", match: :first

    fill_in "Index no", with: @dslist.Index_no
    fill_in "Company", with: @dslist.company
    fill_in "Company address", with: @dslist.company_address
    fill_in "Company part", with: @dslist.company_part
    fill_in "Company tel", with: @dslist.company_tel
    fill_in "Company title", with: @dslist.company_title
    fill_in "Confirm", with: @dslist.confirm
    fill_in "G no", with: @dslist.g_no
    fill_in "G year", with: @dslist.g_year
    fill_in "Home address", with: @dslist.home_address
    fill_in "Home tel", with: @dslist.home_tel
    fill_in "Mobile", with: @dslist.mobile
    fill_in "Name", with: @dslist.name
    click_on "Update Dslist"

    assert_text "Dslist was successfully updated"
    click_on "Back"
  end

  test "destroying a Dslist" do
    visit dslists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dslist was successfully destroyed"
  end
end
