function ToggleRelativeNumber()
    if vim.opt.relativenumber:get() then
        vim.opt.relativenumber = false
    else
        vim.opt.relativenumber = true
    end
end
