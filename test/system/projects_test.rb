require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  setup do
    @project = projects(:one)
  end

  test "visiting the index" do
    visit projects_url
    assert_selector "h1", text: "Projects"
  end

  test "creating a Project" do
    visit projects_url
    click_on "New Project"

    fill_in "Code", with: @project.code
    fill_in "Eop", with: @project.eop
    fill_in "Life", with: @project.life
    fill_in "Name", with: @project.name
    fill_in "Number", with: @project.number
    fill_in "Plant", with: @project.plant
    fill_in "Product", with: @project.product
    fill_in "Project manger", with: @project.project_manger
    fill_in "Ratio", with: @project.ratio
    fill_in "Sop", with: @project.sop
    fill_in "Vehicle", with: @project.vehicle_id
    fill_in "Volume", with: @project.volume
    click_on "Create Project"

    assert_text "Project was successfully created"
    click_on "Back"
  end

  test "updating a Project" do
    visit projects_url
    click_on "Edit", match: :first

    fill_in "Code", with: @project.code
    fill_in "Eop", with: @project.eop
    fill_in "Life", with: @project.life
    fill_in "Name", with: @project.name
    fill_in "Number", with: @project.number
    fill_in "Plant", with: @project.plant
    fill_in "Product", with: @project.product
    fill_in "Project manger", with: @project.project_manger
    fill_in "Ratio", with: @project.ratio
    fill_in "Sop", with: @project.sop
    fill_in "Vehicle", with: @project.vehicle_id
    fill_in "Volume", with: @project.volume
    click_on "Update Project"

    assert_text "Project was successfully updated"
    click_on "Back"
  end

  test "destroying a Project" do
    visit projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project was successfully destroyed"
  end
end
