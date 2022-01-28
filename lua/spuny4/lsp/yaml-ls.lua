require'lspconfig'.yamlls.setup {
  filetypes = { "yml", "yaml" },
  settings = {
    yaml = {
      schemas = {
        github_workflow = "https://json.schemastore.org/github-workflow.json",
        gitlab = 'https://gitlab.com/gitlab-org/gitlab/-/raw/master/app/assets/javascripts/editor/schema/ci.json',
        kubernetes =  'https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.22.1-standalone/all.json'
      }
    }
  }
}
