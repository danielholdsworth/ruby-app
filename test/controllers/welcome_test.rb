# frozen_string_literal: true

require 'test_helper'
#test to see if CirclCI Ruby App appears on the home page.

class BlogFlowTest < ActionDispatch::IntegrationTest
  test 'can see the welcome page' do
    get '/'
    assert_select 'h1', 'CircleCI Ruby App'
  end
end
