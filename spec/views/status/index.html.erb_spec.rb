require 'spec_helper'

describe "status/index.html.erb" do
  before(:each) do
    assign(:status, [
      stub_model(Status,
        :name => "Name"
      ),
      stub_model(Status,
        :name => "Name"
      )
    ])
  end

  it "renders a list of status" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
