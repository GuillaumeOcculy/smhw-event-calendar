# require "rails_helper"
#
# feature "user creates event" do
#   scenario "with valid data" do
#     visit root_url
#
#     fill_in 'event_starts_at', with: Time.now
#     fill_in 'event_ends_at', with: Time.now
#
#     fill_in 'event_description', with: "Guillaume"
#
#     click_button "Create Event"
#
#     expect(page).to have_content("Guillaume")
#   end
# end
