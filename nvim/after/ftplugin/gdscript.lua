local port = tonumber(os.getenv("GDScript_Port") or "") or 6005

vim.lsp.start({
    name = "Godot",
    cmd = vim.lsp.rpc.connect("127.0.0.1", port),
    root_dir = vim.fs.dirname(
        vim.fs.find({ "project.godot", ".git" }, { upward = true })[1]
    ),
})

vim.treesitter.start()
