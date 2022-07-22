require 'rails_helper'

RSpec.describe MembersService do
  describe 'nation members endpoint' do
    it 'gets all members of a given nation' do
      response = MembersService.get_nation_members('air+nation')


      expect(response).to be_a Array
      expect(response.count).to eq 13

      first_member = response[0]

      expect(first_member).to have_key :name
      expect(first_member).to have_key :allies
      expect(first_member).to have_key :enemies
      expect(first_member).to have_key :photoUrl
      expect(first_member).to have_key :affiliation
    end
  end
end
