Then(/^I should see markers appear$/) do
  # save_and_open_page
    # binding.pry
  puts page.evaluate_script("myMarkers").inspect

  markers = page.evaluate_script("myMarkers")
  expect(markers.count).to eq(2)
  volcano = markers.find{|marker| marker["notes"] == "Volcano"}
  expect(volcano["lat"]).to be_within(0.0000000001).of(51.5326686067416)

end
