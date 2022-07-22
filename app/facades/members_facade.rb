class MembersFacade
  def self.all_members_of_a_nation(nation)
    formatted_nation = nation.gsub('_', "+")
    parsed_json = MembersService.get_nation_members(formatted_nation)

    parsed_json.map do |member|
      @members = Member.new(member)
    end
  end

end
