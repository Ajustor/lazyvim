-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.rust" },
  -- { import = "astrocommunity.pack.git" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.astro" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.zig" },
  { import = "astrocommunity.pack.terraform" },
  -- import/override with your plugins folder
}
