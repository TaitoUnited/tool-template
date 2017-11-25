> Create a new project from this template by running `taito template create: tool-template`.

# tool-template

## Prerequisites

* [taito-cli](https://github.com/TaitoUnited/taito-cli#readme)
* [docker-compose](https://docs.docker.com/compose/install/) (>= 1.11)
* Linter plugins for your code editor

## Conventions and tips

* [Taito conventions:](https://github.com/TaitoUnited/taito/wiki/Conventions) General conventions
* [Taito-cli](https://github.com/TaitoUnited/taito/wiki/Taito-cli)
* [Basic git commands](https://github.com/TaitoUnited/taito/wiki/Git-and-GitHub#git-commands)

## Development

Install linters locally (all developers use the same linter version):

    $ taito install

Start the tool:

    $ taito start

Run the examples:

    $ taito start: examples

Start a shell on the tool container:

    $ taito shell

Start a shell on the examples container:

    $ taito shell: examples

Write `taito op` and press TAB to get the list of most important commands for operating your project. Run `taito COMMAND -h` to search for a command (e.g `taito log -h`, `taito clean -h`). Run `taito -h` to get detailed instructions for all commands. For troubleshooting run `taito --trouble`.

## Version control

### Feature branches and making a release

Development is executed in separate feature branches. Note that most feature branches should be short-lived and located only on your local git repository. A new release is made by merging changes from a feature branch to master branch, which triggers an automated CI build.

> TIP: Use the `taito git feat` commands to manage your feature branches.

### Commit messages

All commit messages must be structured according to the [Conventional Commits](http://conventionalcommits.org/) convention as application version number and release notes are generated automatically during release by the [semantic-release](https://github.com/semantic-release/semantic-release) library. Commit messages are automatically validated before commit. You can also edit autogenerated release notes afterwards in GitHub (e.g. to combine some commits and clean up comments). Couple of commit message examples:

```
feat(dashboard): Added news on the dashboard.
```

```
fix(login): Fixed header alignment.

Problem persists with IE9, but IE9 is no longer supported.

Closes #87, #76
```

```
feat(ux): New look and feel

BREAKING CHANGE: Not really breaking anything, but it's a good time to
increase the major version number.
```

You can use any of the following types in your commit message. Use at least types `fix` and `feat`.

* `wip`: Work-in-progress (small commits that will be squashed later to one larger commit before merging them to one of the environment branches)
* `feat`: A new feature
* `fix`: A bug fix
* `docs`: Documentation only changes
* `style`: Code formatting
* `refactor`: Refactoring
* `perf`: Performance tuning
* `test`: Implementing missing tests or correcting existing ones
* `revert`: Revert previous commit.
* `build`: Build system changes
* `ci`: Continuous integration changes (cloudbuild.yaml)
* `chore`: maintenance

> TIP: Optionally you can use `npm run commit` to write your commit messages by using commitizen, though often it is quicker to write commit messages by hand.

## Contacts

> NOTE: Contacts are used from package.json. Do not modify the headers of the development and maintenance chapters, and do not add any extra content in the chapters either.

### Development

* Project Manager: TODO John Doe, john.doe@domain.com, 050 1234 567
* Designer: TODO Jane Doe, jane.doe@domain.com, 050 1234 567

### Maintenance

* Project Manager: TODO John Doe, john.doe@domain.com, 050 1234 567
