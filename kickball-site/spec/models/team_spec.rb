require "spec_helper"

RSpec.describe Team do
  let(:team1) { Team.new("Rockies") }
  let(:team2) { Team.new("Simpson Slammers") }

  describe ".new" do
    it "takes name as an argument" do
      expect(team1).to be_a(Team)
    end
  end
  describe "#name" do
    it "has a reader for a name" do
      expect(team1.name).to eq("Rockies")
    end
  end
  describe "#all" do
    it "returns an array" do
      expect(Team.all).to be_a(Array)
    end
  end
  describe "#players" do
    it "returns an array" do
      expect(team2.players).to be_a(Array)
    end
    it "should return an array of players from said team" do
      players = team2.players
      expect(players[0].team_name).to eq(:"Simpson Slammers")
      expect(players[0].name).to eq("Bart Simpson")
    end
  end
end
