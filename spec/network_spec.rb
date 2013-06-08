require 'spec_helper'

describe "git-network command" do
  let(:token) { ENV['GH_NETWORK'] }

  it "lists the forks of a given github project", :vcr do
    expect(Git::Network.list("PeopleAdmin", "tweemux", token)).to eq(%w[PeopleAdmin brew mutant])
  end

end
