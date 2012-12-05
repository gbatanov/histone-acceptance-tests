{{* using string.strip to remove unwanted characters
	at the beginning and the end of a string *}}
{{var myString = "   [   one two three   ]   "}}
<div>myString = {{myString.toJSON()}}</div>
<div>myString = {{myString.strip(' ', '[', ']').toJSON()}}</div>