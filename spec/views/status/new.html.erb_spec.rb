require 'spec_helper'

describe "status/new.html.erb" do
  before(:each) do
    assign(:status, stub_model(Status,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new status form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => status_index_path, :method => "post" do
      assert_select "input#status_name", :name => "status[name]"
    end
  end
end
