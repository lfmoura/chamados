require 'spec_helper'

describe "issues/edit.html.erb" do
  before(:each) do
    @issue = assign(:issue, stub_model(Issue,
      :project => nil,
      :subject => "MyString",
      :opener_user => nil,
      :assignee_user => nil,
      :status => nil
    ))
  end

  it "renders the edit issue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => issues_path(@issue), :method => "post" do
      assert_select "input#issue_project", :name => "issue[project]"
      assert_select "input#issue_subject", :name => "issue[subject]"
      assert_select "input#issue_opener_user", :name => "issue[opener_user]"
      assert_select "input#issue_assignee_user", :name => "issue[assignee_user]"
      assert_select "input#issue_status", :name => "issue[status]"
    end
  end
end
