require "application_system_test_case"

class PeopleTest < ApplicationSystemTestCase
  setup do
    @person = people(:one)
  end

  test "visiting the index" do
    visit people_url
    assert_selector "h1", text: "People"
  end

  test "creating a Person" do
    visit people_url
    click_on "New Person"

    fill_in "Birthday", with: @person.birthday
    fill_in "Email", with: @person.email
    fill_in "Gender", with: @person.gender
    fill_in "Home address", with: @person.home_address
    fill_in "Home postcode", with: @person.home_postcode
    fill_in "Id number", with: @person.id_number
    fill_in "Id type", with: @person.id_type
    fill_in "Name", with: @person.name
    fill_in "Nationality", with: @person.nationality
    fill_in "Phone number", with: @person.phone_number
    click_on "Create Person"

    assert_text "Person was successfully created"
    click_on "Back"
  end

  test "updating a Person" do
    visit people_url
    click_on "Edit", match: :first

    fill_in "Birthday", with: @person.birthday
    fill_in "Email", with: @person.email
    fill_in "Gender", with: @person.gender
    fill_in "Home address", with: @person.home_address
    fill_in "Home postcode", with: @person.home_postcode
    fill_in "Id number", with: @person.id_number
    fill_in "Id type", with: @person.id_type
    fill_in "Name", with: @person.name
    fill_in "Nationality", with: @person.nationality
    fill_in "Phone number", with: @person.phone_number
    click_on "Update Person"

    assert_text "Person was successfully updated"
    click_on "Back"
  end

  test "destroying a Person" do
    visit people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person was successfully destroyed"
  end
end
