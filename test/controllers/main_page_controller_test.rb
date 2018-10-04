require 'test_helper'

class MainPageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get main_page_index_url
    assert_response :success
	assert_select '#columns #side a', minimum: 4
	assert_select '#main .entry', 3
	assert_select 'h3', 'МБОУ СОШ №12'
	assert_select '#time', "Now: #{Time.now}"
  end

end
