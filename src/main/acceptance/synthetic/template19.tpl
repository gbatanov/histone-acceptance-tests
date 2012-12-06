{{macro renderGadgets(gadgets, maxRows)}}

	{{var index = 0}}
	{{var result = []}}
	{{var bounds = [].resize(maxRows, 0)}}
	{{var lastIndex = gadgets.size()}}

	{{macro renderGadgets()}}
		{{if index < lastIndex}}
			{{var gadget = gadgets[index]}}
			{{var index = index + 1}}
			{{var toRow = bounds.search(min(bounds))}}
			{{var rowData = (result[toRow] or []) + [gadget]}}
			{{var result = result.set(toRow, rowData)}}
			{{var bounds = bounds.set(toRow, bounds[toRow] + gadget.width)}}
			{{renderGadgets()}}
		{{elseif bounds.size()}}
			{{var rowIndex = bounds.search(max(bounds))}}
			{{var bounds = bounds.remove(rowIndex)}}
			<div style="clear: both;">
				{{for gadget in result[rowIndex]}}<div style="
					float: left;
					height: 140px;
					margin-right: 10px;
					margin-bottom: 10px;
					background-color: red;
					width: {{gadget.width * 140 + (gadget.width - 1) * 10}}px;
				">{{maxRows - bounds.size() - 1}},{{self.index}}</div>{{/for}}
			</div>
			{{renderGadgets()}}
		{{/if}}
	{{/macro}}

	{{renderGadgets()}}


{{/macro}}

{{renderGadgets([
	[width: 1],
	[width: 1],
	[width: 2],
	[width: 1],
	[width: 1],
	[width: 1],
	[width: 1],
	[width: 2],
	[width: 2],
	[width: 2],
	[width: 1],
	[width: 2],
	[width: 1],
	[width: 2]
], 4)}}