require 'spec_helper'

describe "statuses/index.html.erb" do
  before(:each) do
    assign(:statuses, [
      stub_model(Status),
      stub_model(Status)
    ])
  end

  it "renders a list of statuses" do
    render
  end
end
