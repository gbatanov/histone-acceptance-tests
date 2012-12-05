{{* using string.split to turn string into an array *}}
{{var myString = "Hello world"}}
{{for char in myString.split('')}}
	<div>character at index({{self.index}}) = {{char.toJSON()}}</div>
{{/for}}