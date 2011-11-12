require 'spec_helper'

describe "issues/index.html.erb" do
  before(:each) do
    assign(:issues, [
      stub_model(Issue,
        :project => nil,
        :subject => "Subject",
        :opener_user => nil,
        :assignee_user => nil,
        :status => nil
      ),
      stub_model(Issue,
        :project => nil,
        :subject => "Subject",
        :opener_user => nil,
        :assignee_user => nil,
        :status => nil
      )
    ])
  end

  it "renders a list of issues" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
