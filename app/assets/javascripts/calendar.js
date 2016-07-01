<script>
  $('#calendar').fullCalendar({
    defaultView: "agendaWeek",
    firstDay:  <%= Time.zone.now.wday %>,
    timeFormat: 'H[h](:mm)',
    allDaySlot: false,
    height: 'auto',
    events: [
        <% @events.each do |event| %>
        {
              title: '<%= event.description %>',
              start: moment('<%= event.starts_at.in_time_zone.iso8601 %>'),
              end:  moment('<%= event.ends_at.in_time_zone.iso8601 %>'),

              color: '<%= "#FF0000"  %>'
        },
      <% end %>

    ],
  })
</script>
