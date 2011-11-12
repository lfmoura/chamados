require 'spec_helper'

describe "statuses/new.html.erb" do
  before(:each) do
    assign(:status, stub_model(Status).as_new_record)
  end

  it "renders new status form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => statuses_path, :method => "post" do
    end
  end
end
