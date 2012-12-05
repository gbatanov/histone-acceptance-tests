{{* define month names *}}
{{var months = [
	'January', 'February', 'March',
	'April', 'May', 'June', 'July', 'August',
	'September', 'October', 'November', 'December'
]}}

{{* result: 31 *}}
<div>There are {{daysInMonth(2012, 12)}} days in {{months[11]}} 2012</div>

{{* result: 29 *}}
<div>There are {{daysInMonth(2012, 2)}} days in {{months[1]}} 2012</div>