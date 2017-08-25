require "spec_helper"

RSpec.describe Player do
  let(:player1) { Player.new("Bart", "catcher", "Rockies") }
  let(:player2) { Player.new("Lisa", "shortstop", "Phillies") }

  describe ".new" do
    it "takes a name, position, and team_name" do
      expect(player1).to be_a(Player)
    end
  end

  describe "#name" do
    it "has name as a reader" do
      expect(player1.name).to eq("Bart")
    end
  end

  describe "#position" do
    it "has a reader for a position" do
      expect(player1.position).to eq("catcher")
    end
  end

  describe "#team_name" do
    it "has a reader for a team name" do
      expect(player1.team_name).to eq("Rockies")
    end
  end

  describe "#all" do
    it "should return an array" do
      expect(Player.all).to be_a(Array)
    end
  end

end
