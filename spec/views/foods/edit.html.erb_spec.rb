require 'spec_helper'

describe "foods/edit" do
  before(:each) do
    @food = assign(:food, stub_model(Food,
      :name => "MyString",
      :serving_size => "MyString",
      :calories => 1,
      :protein => 1,
      :carbohydrates => 1,
      :fat => 1
    ))
  end

  it "renders the edit food form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", food_path(@food), "post" do
      assert_select "input#food_name[name=?]", "food[name]"
      assert_select "input#food_serving_size[name=?]", "food[serving_size]"
      assert_select "input#food_calories[name=?]", "food[calories]"
      assert_select "input#food_protein[name=?]", "food[protein]"
      assert_select "input#food_carbohydrates[name=?]", "food[carbohydrates]"
      assert_select "input#food_fat[name=?]", "food[fat]"
    end
  end
end
