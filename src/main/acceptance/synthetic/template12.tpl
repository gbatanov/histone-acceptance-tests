{{* testing strings against the regular expression *}}
{{var emailRegExp = '^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$'}}

{{for emailAddress in [
	'foobar',
	'dsfsdafd@',
	'@xxxxxx',
	'sadfdsf@cccc',
	'@xxxxxx.com',
	'weblab@megafon.ru'
]}}
	<div>
		{{if emailAddress.test(emailRegExp)}}
			"<strong style="color: green;">{{emailAddress}}</strong>"
			<span>is valid email address</span>
		{{else}}
			"<strong style="color: red;">{{emailAddress}}</strong>"
			<span>is invalid email address</span>
		{{/if}}
	</div>
{{/for}}