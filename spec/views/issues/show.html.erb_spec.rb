require 'spec_helper'

describe "issues/show.html.erb" do
  before(:each) do
    @issue = assign(:issue, stub_model(Issue,
      :project => nil,
      :subject => "Subject",
      :opener_user => nil,
      :assignee_user => nil,
      :status => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Subject/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
