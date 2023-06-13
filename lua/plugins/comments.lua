local Comments = {}

function Comments.setup(use)
    use { "numToStr/Comment.nvim" }
    require("Comment").setup()
end

return Comments
