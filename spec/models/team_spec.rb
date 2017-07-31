require "spec_helper"

RSpec.describe Team do
  # Team specs go here.
  let (:team) do
    team = Team.new("Simpson Slammers")
  end
  describe ".new" do
    it "takes a name" do
      expect(team).to be_a(Team)
    end
  end

  describe "#name" do
    it "has a reader for name" do
      expect(team.name).to eq("Simpson Slammers")
    end
    it "does not have a writer for name" do
      expect { team.name = "Cherry Blossoms" }.to raise_error(NoMethodError)
    end
  end

  describe "#all" do
    it "returns an array of Team objects that correspond to every player" do
      expect(Team.all).to be_a(Array)
    end
  end

  describe "#players" do
    it "returns an array of Player objects for the team" do
      expect(team.players).to be_a(Array)
    end
  end
end
