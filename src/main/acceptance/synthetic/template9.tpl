{{* using toChar() function to convert character code into a character *}}
{{var codes = [
	72, 101, 108,
	108, 111, 32,
	119, 111, 114,
	108, 100, 33
]}}

{{for code in codes}}{{
	code.toChar()
}}{{/for}}