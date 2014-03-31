require 'spec_helper'

describe "foods/index" do
  before(:each) do
    assign(:foods, [
      stub_model(Food,
        :name => "Name",
        :serving_size => "Serving Size",
        :calories => 1,
        :protein => 2,
        :carbohydrates => 3,
        :fat => 4
      ),
      stub_model(Food,
        :name => "Name",
        :serving_size => "Serving Size",
        :calories => 1,
        :protein => 2,
        :carbohydrates => 3,
        :fat => 4
      )
    ])
  end

  it "renders a list of foods" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Serving Size".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
