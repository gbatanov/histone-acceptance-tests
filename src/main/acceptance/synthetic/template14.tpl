{{* using map.join to turn map into a string *}}
{{var style = [
	'color: blue',
	'padding: 8px',
	'font-weight: bold',
	'border-radius: 8px',
	'border: 1px solid red'
].join(';')}}

<div style="{{style}}">
	hello world
</div>