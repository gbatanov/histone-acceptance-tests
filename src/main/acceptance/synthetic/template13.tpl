{{* using string.toNumber() to turn string into a number *}}
{{var myString}}
	3.14
{{/var}}

<div>{{myString}} * 100 = {{myString.toNumber() * 100}}</div>