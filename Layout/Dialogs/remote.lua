actions.message = function ()
	libs.server.update({ type = "message", text = "message", title = "title" });
end

actions.dialog = function ()
	libs.server.update({
		type = "dialog",
		text = "message",
		title = "title",
		children = {
			{ type = "button", text = "OK" },
			{ type = "button", text = "Cancel" }
		}
	})
end

actions.list = function ()
	libs.server.update({
		type = "dialog",
		title = "title",
		children = {
			{ type = "item", text = "item 1" },
			{ type = "item", text = "item 2" },
			{ type = "item", text = "item 3" },
			{ type = "item", text = "item 4" },
			{ type = "item", text = "item 5" }
		},
		ontap = "got_item"
	})
end

actions.got_item = function (index)
	print("item: " .. index);
end

actions.input = function ()
	libs.server.update({
		type = "input",
		title = "title",
		text = "default text",
		ontap = "got_input"
	});
end

actions.got_input = function (text)
	print("input: " .. text);
end