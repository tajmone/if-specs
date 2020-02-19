# Interactive Fiction Specs in AsciiDoc

![build status][travis badge]

- https://github.com/tajmone/if-specs

This repository is dedicated to porting to AsciiDoc technical documents on various Interactive Fiction standards and their specifications.

Created by [Tristano Ajmone], 2020/02/19.


-----

**Table of Contents**


<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3,4" -->

- [Project Contents](#project-contents)
- [Project Status](#project-status)
- [Licenses](#licenses)
    - [Glulx Specification](#glulx-specification)
- [Links](#links)

<!-- /MarkdownTOC -->

-----

# Project Contents

- [`/glulx/`](./glulx/) — Glulx Specification v3.1.2.

Build and validation scripts:

- [`validate.sh`][validate.sh] — code styles consistency validation via [EClint] ([Node.js]).

Repository settings:

- [`.editorconfig`][.editorconfig] — [EditorConfig] settings for code styles consistency.
- [`.gitattributes`][.gitattributes]
- [`.gitignore`][.gitignore]
- [`.travis.yml`][.travis.yml] — [Travis CI] settings to validate commits and pull request code styles consistency.

# Project Status

The project is still under development, below is the task-list of the current roadmap.

- [ ] Add original specs and standards documents:
    + [ ] Blorb
    + [ ] Glk
    + [x] Glulx
    + [ ] The Treaty of Babel
    + [ ] Z-Machine
- [ ] Port the documents to AsciiDoc:
    + [ ] Blorb
    + [ ] Glk
    + [ ] Glulx
    + [ ] The Treaty of Babel
    + [ ] Z-Machine

# Licenses

Each document is governed by its original license.

Here follows a quick summary of the Copyright and license terms of each third party document included in this repository.

For full details, see the `README.md` and `LICENSE` files inside each subfolder.

## Glulx Specification

- [`/glulx/`](./glulx/)
    + [`LICENSE`](./glulx/LICENSE)

The Glulx specification is Copyright 1999-2014 by [Andrew Plotkin], licensed under [CC BY-NC-SA 3.0].

# Links

- **[Blorb specs]** — by [Andrew Plotkin], hosted at [eblong.com].
- **[Blorb format]** — by [Graham Nelson], hosted at [Inform 6 website].
- **[Glulx specs]** — by [Andrew Plotkin], hosted at [eblong.com].
- **[The Treaty of Babel]** — hosted at the [IF Archive].
- **[Z-Machine specs]** — by the [Z-Machine Mailing List], hosted at [Inform 6 website].


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[eblong.com]: https://eblong.com "Visit eblong.com"
[Inform 6 website]: https://inform-fiction.org "Visit Inform 6 website"
[IF Archive]: https://www.ifarchive.org/ "Visit the IF Archive"

<!-- 3rd party tools -->

[EClint]: https://www.npmjs.com/package/eclint "Visit EClint page at NPM"
[EditorConfig]: https://editorconfig.org "Visit EditorConfig website"
[Node.js]: https://nodejs.org "Visit Node.js website"
[Travis CI]: https://travis-ci.com  "Visit Travis CI website"

<!-- specs & tech docs -->

[Blorb specs]: https://eblong.com/zarf/blorb/index.html "Official Blorb specification homepage"
[Blorb format]: https://inform-fiction.org/zmachine/standards/blorb/index.html "Read 'The Blorb Resources Format' by Graham Nelson"
[Glulx specs]: https://eblong.com/zarf/glulx/index.html "Official Glulx specification homepage"
[The Treaty of Babel]: https://babel.ifarchive.org "Visit the official homepage of 'The Treaty of Babel', software and a standard for IF bibliography"
[Z-Machine specs]: https://inform-fiction.org/zmachine/standards/index.html "Visit the Z-Machine Standards homepage"

<!-- licenses -->

[CC BY-NC-SA 3.0]: https://creativecommons.org/licenses/by-nc-sa/3.0/ "View CC BY-NC-SA 3.0 License at creativecommons.org"

<!-- badges -->

[travis badge]: https://travis-ci.org/tajmone/if-specs.svg?branch=master "Travis CI Build Status for EditorConfig Validation"

<!-- project files -->

[.editorconfig]: ./.editorconfig "EditorConfig settings for code styles consistency"
[.gitattributes]: ./.gitattributes "Git attributes settings file"
[.gitignore]: ./.gitignore "Git ignore rules files"
[.travis.yml]: ./.travis.yml "Travis CI build validation settings"
[validate.sh]: ./validate.sh "Validate contents against EditorConfig settings via EClint"

<!-- people -->

[Andrew Plotkin]: https://github.com/erkyrath "View Andrew Plotkin's GitHub profile"
[Graham Nelson]: https://github.com/ganelson "View Graham Nelson's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

<!-- orgs -->

[Z-Machine Mailing List]: https://ifarchive.org/indexes/if-archive/infocom/interpreters/specification/ "See archived copies of the defunct Z-Machine Mailing List <z-machine@gmd.de>, preserved at the IF Archive"

<!-- EOF -->
