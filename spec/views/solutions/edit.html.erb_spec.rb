require 'rails_helper'

RSpec.describe "solutions/edit", type: :view do
  before(:each) do
    @solution = assign(:solution, Solution.create!(
      :statement => "MyText",
      :question => nil
    ))
  end

  it "renders the edit solution form" do
    render

    assert_select "form[action=?][method=?]", solution_path(@solution), "post" do

      assert_select "textarea[name=?]", "solution[statement]"

      assert_select "input[name=?]", "solution[question_id]"
    end
  end
end
