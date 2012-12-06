{{macro calendar(day, month, year)}}

	{{var daysInMonth = daysInMonth(year, month)}}
	{{var currentMonthStartsOn = dayOfWeek(year, month, 1)}}
	{{var prevMonthEndsWith = month is 1 ? daysInMonth(year - 1, 12) : daysInMonth(year, month - 1)}}
	{{var prevMonthRange = range(prevMonthEndsWith - currentMonthStartsOn + 2, prevMonthEndsWith)}}
	{{var prevMonthRange = (7 - (8 - currentMonthStartsOn)) ? prevMonthRange : []}}
	{{var currMonthRange = range(1, daysInMonth)}}
	{{var nextMonthRange = range(1, 42 - prevMonthRange.size() - currMonthRange.size())}}

	<div class="calendar">
		<div class="calendar-date">
			{{self.arguments.join('/')}}
		</div>
		<ul class="calendar-days">
			{{for item in prevMonthRange}}
				<li class="calendar-prevMonth">{{item}}
			{{/for}}

			{{for item in currMonthRange}}
				<li class="{{if item is day}}
					calendar-currentDay
				{{/if}}"><strong>{{item}}</strong>
			{{/for}}

			{{for item in nextMonthRange}}
				<li>{{item}}
			{{/for}}
		</ul>
	</div>

{{/macro}}

{{for x in range(1, 12)}}
	{{calendar(10, x, 2012)}}
{{/for}}
