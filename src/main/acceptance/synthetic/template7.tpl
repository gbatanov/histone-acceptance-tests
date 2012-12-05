{{* recursive macros example *}}
{{macro myMacro(string, offset)}}
	{{var offset = offset.isNumber() ? offset : 0}}
	<div>{{string.slice(offset)}}</div>
	{{if offset < string.size() - 1}}
		{{myMacro(string, offset + 1)}}
	{{/if}}
{{/macro}}

{{myMacro('Hello world!')}}