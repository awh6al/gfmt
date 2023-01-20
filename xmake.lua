add_rules("mode.debug", "mode.release")

add_repositories("antlr https://github.com/antlr/grammars-v4 master")

local repos = "$(configdir)/repositories/"

target("gfmt", function()
    set_kind("binary")
    set_toolchains("llvm")
    set_languages("c++20")
    add_cxxflags("-std=c++20", "-fuse-ld=lld", "-fmodules-search-all", { force = true })
    add_files("src/**.cpp", "src/**.mpp")
end)

target("gfmt-test", function()
    set_kind("binary")
    set_toolchains("llvm")
    set_languages("c++20")
    add_cxxflags("-fuse-ld=lld", "-fmodules-search-all", { force = true })
    add_files("test/**.cpp", "test/**.mpp")
    add_links("gtest")
end)
