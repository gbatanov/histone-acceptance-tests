{{* using map.remove to remove array items *}}
{{macro reduce(array)}}
	{{var key = array.keys()[0]}}
	{{if key}}
		{{var values = array.values()}}
		<div>{{values.toJSON()}}</div>
		{{reduce(array.remove(key))}}
	{{/if}}
{{/macro}}

{{reduce([
	"different",
	"something",
	"caterpillar",
	"everything",
	"chocolate",
	"hamburger",
	"downstairs"
])}}