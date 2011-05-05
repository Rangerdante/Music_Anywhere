require 'spec_helper'

describe "songs/index.html.erb" do
  before(:each) do
    assign(:songs, [
      stub_model(Song,
        :title => "Title",
        :location => "Location"
      ),
      stub_model(Song,
        :title => "Title",
        :location => "Location"
      )
    ])
  end

  it "renders a list of songs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
