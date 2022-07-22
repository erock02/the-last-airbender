require 'rails_helper'

RSpec.describe 'search index page' do
  it 'can search for members of a nation' do
    visit "/"
    select "Fire Nation", from: 'nation'
    click_on 'Search For Members'
    expect(current_path).to eq('/search')
  end
end
