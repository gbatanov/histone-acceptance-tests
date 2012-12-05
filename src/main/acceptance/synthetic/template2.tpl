{{* reading key and value in the loop *}}
<ul>
	{{for key:value in [one: 1, two: 2, three: 3, four: 4, five: 5, six: 6]}}
		<li>{{key}} = {{value}}</li>
	{{/for}}
</ul>