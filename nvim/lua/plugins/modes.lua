return {
	'mvllow/modes.nvim',
	tag = 'v0.2.0',
    dependencies = 'flexoki',
    config = function()
        require('modes').setup({
            colors = {
                copy = "#f5c359",
                delete = "#c75c6a",
                insert = "#d7f5d8",
                visual = "#9745be",
            },

            line_opacity = 1,
        })
	end
}
