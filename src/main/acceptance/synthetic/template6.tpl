{{* macro with variable arguments list *}}
{{macro makeList()}}
	<ul>
		{{for arg in self.arguments}}
			<li>{{arg}}</li>
		{{/for}}
	</ul>
{{/macro}}

{{* call our macro *}}
{{makeList('Apple', 'Google', 'Microsoft', 'Facebook')}}