# smhw-event-calendar

## Task
- Create a Pull Request to this repo https://github.com/mysencare/smhw-event-calendar with the following features
- On /events page, we need to have a weekly calendar highlighting today. We need to be able to create an event which has start and end dates and a description.
- The created events should instantly show on the calendar with an indicator on start date column and another one for the end date column. An image with ideal interface is shown on the page.
- Events should be saved in a backend store without refreshing the page.
- You may use any gems/plugins.
- Commit changes to git often with descriptive messages.
- This should not take more than 3 hours.


# Setup

~ bundle install

~ rake db:migrate

~ rails server

## Test

~ bin/rake

# Review

The user can add events

The calendar shows the current day as the first day of the calendar.

I could not add the ajax function, I am currently in the process of perfecting my learning JavaScrip via codeschool.com
