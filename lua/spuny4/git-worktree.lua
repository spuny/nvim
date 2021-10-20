local Worktree = require("git-worktree")
local Job = require("plenary.job")
local Path = require("plenary.path")

Worktree.on_tree_change(function(op, path, upstream)

    if op == Worktree.Operations.Create then
        local submodule = Job:new({
            "git", "submodule", "update"
        })

        local configure = Job:new({
            configure_path, "--ninja", "--debug",
            cwd = build_path,
        })

        submodule:and_then_on_success(make_build)
        make_build:and_then_on_success(configure)
        submodule:start()
    end
end)
