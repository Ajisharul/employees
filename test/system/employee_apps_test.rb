require "application_system_test_case"

class EmployeeAppsTest < ApplicationSystemTestCase
  setup do
    @employee_app = employee_apps(:one)
  end

  test "visiting the index" do
    visit employee_apps_url
    assert_selector "h1", text: "Employee apps"
  end

  test "should create employee app" do
    visit employee_apps_url
    click_on "New employee app"

    fill_in "Age", with: @employee_app.age
    fill_in "Designation", with: @employee_app.designation
    fill_in "Employee name", with: @employee_app.employee_name
    fill_in "Gender", with: @employee_app.gender
    click_on "Create Employee app"

    assert_text "Employee app was successfully created"
    click_on "Back"
  end

  test "should update Employee app" do
    visit employee_app_url(@employee_app)
    click_on "Edit this employee app", match: :first

    fill_in "Age", with: @employee_app.age
    fill_in "Designation", with: @employee_app.designation
    fill_in "Employee name", with: @employee_app.employee_name
    fill_in "Gender", with: @employee_app.gender
    click_on "Update Employee app"

    assert_text "Employee app was successfully updated"
    click_on "Back"
  end

  test "should destroy Employee app" do
    visit employee_app_url(@employee_app)
    click_on "Destroy this employee app", match: :first

    assert_text "Employee app was successfully destroyed"
  end
end
