require 'rails_helper'

RSpec.describe "tickets/edit", type: :view do
  before(:each) do
    @ticket = assign(:ticket, Ticket.create!(
      :message => "MyText",
      :motive => "MyString",
      :user => nil
    ))
  end

  it "renders the edit ticket form" do
    render

    assert_select "form[action=?][method=?]", ticket_path(@ticket), "post" do

      assert_select "textarea[name=?]", "ticket[message]"

      assert_select "input[name=?]", "ticket[motive]"

      assert_select "input[name=?]", "ticket[user_id]"
    end
  end
end
