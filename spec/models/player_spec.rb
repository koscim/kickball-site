require "spec_helper"

RSpec.describe Player do
  # Player specs go here.
  let(:player) do
    player = Player.new("John Doe", "Forward Position", "Simpsons Slammers")
  end
  describe ".new" do
    it "takes a name, position, and a team_name" do
      expect(player).to be_a(Player)
    end
  end

  describe "#name" do
    it "has a reader for name" do
      expect(player.name).to eq("John Doe")
    end
    it "does not have a writer for name" do
      expect { player.name = "Joe Schmoe" }.to raise_error(NoMethodError)
    end
  end

  describe "#position" do
    it "has a reader for position" do
      expect(player.position).to eq("Forward Position")
    end
    it "does not have a writer for title" do
      expect { player.position = "Different Position" }.to raise_error(NoMethodError)
    end
  end

  describe "#team_name" do
    it "has a reader for team_name" do
      expect(player.team_name).to eq("Simpsons Slammers")
    end
    it "does not have a writer for team_name" do
      expect { player.team_name = "Cherry Blossoms" }.to raise_error(NoMethodError)
    end
  end

  describe "#all" do
    it "returns an array of Player objects that correspond to every player" do
      expect(Player.all).to be_a(Array)
    end
  end
end
