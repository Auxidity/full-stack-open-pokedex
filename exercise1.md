## Chosen language: Rust

In rust, the tooling provided is great in comparison to a lot of other compiled languages. It almost feels as if the tooling was amongst primary concerns originally. 

Testing and building are both done normally by cargo, although it is possible to forego both to compile executables and creating your own test suite runner (compiling through rustc and executing it through a cron job, script or whatever might suit one best). 
Cargo also provides an LSP (language server protocol) and a linter, namely rust-analyzer and clippy. Depending on your development environment, the installation of each varies, but since even VIM has a plugin for both, most peoples chosen editor should be able to integrate both
linting and LSP features to the development environment directly. If not, linting can still be performed through a CLI if the task of integrating LSP's (which is the same protocol through which linters talk with the IDE) to ones editor is too difficult of a task to tackle.

When it comes to setting up a CI/CD pipeline, there seems to be a lot of options to consider. While any meaningful conclusion might be hard to come to without further investigation with actual use, GitLab CI/CD and Buildkite seem worthy of such investigation.

Now when it comes to self-hosted versus cloud, I am heavily in favor of self-hosted solutions. There are multiple reasons for this, but none of them really have anything to do with the use case in mind. Primary concern with cloud provided solutions for me is the fact that
these services cannot guarantee (even if they claim to) to be available and without disruption when I (or the team) need to use them. Backwards compatibility is something that is often striven towards, but its not guaranteed. A service change might break your entire pipeline,
or the service might be down entirely. Now thats not to say that things cant go wrong with self-hosted CI/CD pipeline, but fixing those issues are not dependant on a third party, which in my opinion trumps all benefits of cloud based solutions. But I do realize that it is purely
a bias of mine, and some might question the validity of my concerns (even though Cloudflare has gone down multiple times.. and CrowdStrike should be fresh in memory.. who's to say a cloud service won't just die "randomly"?) .

