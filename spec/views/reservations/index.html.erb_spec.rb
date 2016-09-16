require 'rails_helper'

RSpec.describe "reservations/index", type: :view do
  before(:each) do
    assign(:reservations, [
      Reservation.create!(
        :fieldnumber => 2
      ),
      Reservation.create!(
        :fieldnumber => 2
      )
    ])
  end

  it "renders a list of reservations" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
