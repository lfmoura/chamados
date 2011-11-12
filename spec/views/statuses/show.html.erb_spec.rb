require 'spec_helper'

describe "statuses/show.html.erb" do
  before(:each) do
    @status = assign(:status, stub_model(Status))
  end

  it "renders attributes in <p>" do
    render
  end
end
