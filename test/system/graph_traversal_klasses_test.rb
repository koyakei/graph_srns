require "application_system_test_case"

class GraphTraversalKlassesTest < ApplicationSystemTestCase
  setup do
    @graph_traversal_klass = graph_traversal_klasses(:one)
  end

  test "visiting the index" do
    visit graph_traversal_klasses_url
    assert_selector "h1", text: "Graph Traversal Klasses"
  end

  test "creating a Graph traversal klass" do
    visit graph_traversal_klasses_url
    click_on "New Graph Traversal Klass"

    fill_in "Json data", with: @graph_traversal_klass.json_data
    fill_in "Name", with: @graph_traversal_klass.name
    click_on "Create Graph traversal klass"

    assert_text "Graph traversal klass was successfully created"
    click_on "Back"
  end

  test "updating a Graph traversal klass" do
    visit graph_traversal_klasses_url
    click_on "Edit", match: :first

    fill_in "Json data", with: @graph_traversal_klass.json_data
    fill_in "Name", with: @graph_traversal_klass.name
    click_on "Update Graph traversal klass"

    assert_text "Graph traversal klass was successfully updated"
    click_on "Back"
  end

  test "destroying a Graph traversal klass" do
    visit graph_traversal_klasses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Graph traversal klass was successfully destroyed"
  end
end
