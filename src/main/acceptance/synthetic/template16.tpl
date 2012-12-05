{{* define week day names *}}
{{var days = [
	'Monday',
	'Tuesday',
	'Wednesday',
	'Thursday',
	'Friday',
	'Saturday',
	'Sunday'
]}}

{{* 11 July 2012: Wednesday *}}
<div>11.07.2012 is {{days[dayOfWeek(2012, 7, 11) - 1]}}</div>

{{* 22 November 1963: Friday *}}
<div>22.11.1963 is {{days[dayOfWeek(1963, 11, 22) - 1]}}</div>

{{* 25 July 1985: Thursday *}}
<div>25.07.1985 is {{days[dayOfWeek(1985, 7, 25) - 1]}}</div>