require 'rails_helper'

RSpec.describe MembersFacade do
  it 'turns the data in to poros' do
    expected = MembersFacade.all_members_of_a_nation('air+nation')

    expect(expected.class).to eq Array
    expect(expected).to be_all Member
  end

end
