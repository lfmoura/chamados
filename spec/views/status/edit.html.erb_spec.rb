require 'spec_helper'

describe "status/edit.html.erb" do
  before(:each) do
    @status = assign(:status, stub_model(Status,
      :name => "MyString"
    ))
  end

  it "renders the edit status form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => status_index_path(@status), :method => "post" do
      assert_select "input#status_name", :name => "status[name]"
    end
  end
end
