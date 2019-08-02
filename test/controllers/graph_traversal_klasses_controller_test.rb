require 'test_helper'

class GraphTraversalKlassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @graph_traversal_klass = graph_traversal_klasses(:one)
  end

  test "should get index" do
    get graph_traversal_klasses_url
    assert_response :success
  end

  test "should get new" do
    get new_graph_traversal_klass_url
    assert_response :success
  end

  test "should create graph_traversal_klass" do
    assert_difference('GraphTraversalKlass.count') do
      post graph_traversal_klasses_url, params: { graph_traversal_klass: { json_data: @graph_traversal_klass.json_data, name: @graph_traversal_klass.name } }
    end

    assert_redirected_to graph_traversal_klass_url(GraphTraversalKlass.last)
  end

  test "should show graph_traversal_klass" do
    get graph_traversal_klass_url(@graph_traversal_klass)
    assert_response :success
  end

  test "should get edit" do
    get edit_graph_traversal_klass_url(@graph_traversal_klass)
    assert_response :success
  end

  test "should update graph_traversal_klass" do
    patch graph_traversal_klass_url(@graph_traversal_klass), params: { graph_traversal_klass: { json_data: @graph_traversal_klass.json_data, name: @graph_traversal_klass.name } }
    assert_redirected_to graph_traversal_klass_url(@graph_traversal_klass)
  end

  test "should destroy graph_traversal_klass" do
    assert_difference('GraphTraversalKlass.count', -1) do
      delete graph_traversal_klass_url(@graph_traversal_klass)
    end

    assert_redirected_to graph_traversal_klasses_url
  end
end
