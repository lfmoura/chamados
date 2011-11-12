require 'spec_helper'

describe "issues/new.html.erb" do
  before(:each) do
    assign(:issue, stub_model(Issue,
      :project => nil,
      :subject => "MyString",
      :opener_user => nil,
      :assignee_user => nil,
      :status => nil
    ).as_new_record)
  end

  it "renders new issue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => issues_path, :method => "post" do
      assert_select "input#issue_project", :name => "issue[project]"
      assert_select "input#issue_subject", :name => "issue[subject]"
      assert_select "input#issue_opener_user", :name => "issue[opener_user]"
      assert_select "input#issue_assignee_user", :name => "issue[assignee_user]"
      assert_select "input#issue_status", :name => "issue[status]"
    end
  end
end
