# frozen_string_literal: true

require 'rails_helper'

describe "GET '/' - homepage", :type => :feature do
    let(:name) { "simple name" }
    it 'welcomes the user to CircleCI Ruby App' do
      visit('/')
      expect(page).to have_content("CircleCI")
      puts 'cool, the homepage has CircleCI on it'
    end
  end