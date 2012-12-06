{{macro calendar(day, month, year)}}

	{{var daysInMonth = daysInMonth(year, month)}}
	{{var currentMonthStartsOn = dayOfWeek(year, month, 1)}}
	{{var prevMonthEndsWith = month is 1 ? daysInMonth(year - 1, 12) : daysInMonth(year, month - 1)}}
	{{var prevMonthRange = range(prevMonthEndsWith - currentMonthStartsOn + 2, prevMonthEndsWith)}}
	{{var prevMonthRange = (7 - (8 - currentMonthStartsOn)) ? prevMonthRange : []}}
	{{var currMonthRange = range(1, daysInMonth)}}
	{{var nextMonthRange = range(1, 42 - prevMonthRange.size() - currMonthRange.size())}}
	
	<style type="text/css">
		.calendar {
			padding: 1px;
			overflow: hidden;
			border-radius: 6px;
			display: inline-block;
			background-color: #333333;
			border: 2px solid #CDCDCD;
		}
		
		.calendar-date {
			color: white;
			font-size: 10px;
			text-align: center;
			padding-top: 4px;
			padding-bottom: 4px;
		}
		
		.calendar-days {
			width: 175px;
			margin: 0px;
			font-size: 0px;
			padding: 0px;
			margin-right: -1px;
			margin-bottom: -1px;
		}
		
		.calendar-days strong {
			color: white;
		}
		
		.calendar-days li {
			display: inline-block;
			list-style-type: none;
			background-color: gray;
			width: 24px;
			height: 24px;
			line-height: 24px;
			font-size: 10px;
			margin-right: 1px;
			margin-bottom: 1px;
			text-align: center;
			color: #4B4B4B;
		}
		
		.calendar-currentDay strong {
			color: blue;
		}
	</style>
	
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
