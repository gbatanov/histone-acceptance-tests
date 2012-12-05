<div>
	{{* creating a array with 30 elements in it *}}
	{{for item in range(1, 30)}}
		<div style="{{[
			'float: left',
			'background-color: gray',
			'width: 40px',
			'height: 40px',
			'margin-right: 5px',
			'margin-bottom: 5px'
		].join(';')}}">
			{{item}}
		</div>
	{{/for}}
</div>