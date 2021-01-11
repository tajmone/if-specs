# Original Treaty of Babel Documents

This directory contains copies of the original _Treaty of Babel_ documents in html, markdown and plain-text format, organized into folders by revision number.

The documents were downloaded from:

- https://babel.ifarchive.org

-------------------------------------------------------------------------------

- [`/rev9/`][rev9] — Oct 24, 2014.
    + [`babel_rev9.md`][rev9 md]
    + [`babel_rev9.txt`][rev9 txt]
    + [`babel_rev9.html`][rev9 Live]
- [`changes.txt`][changes.txt] — latest _Treaty of Babel_ change log.



-------------------------------------------------------------------------------

Whenever a new version of the document is released, we can track changes by diffing the new plain-text document with the previous version, and manually integrate the changes into the AsciiDoc sources.


> **NOTE** — For the sake of code styles consistency, and in compliance with the [code conventions] and [continuous integration code validation] adopted in this repository, all tabs indentations in the markdown and plain-text documents were converted to spaces (one tab = 4 spaces).
>
> Since the purpose of these upstream documents is to isolate changes in each new revision, by diffing it with its previous version, the same formatting fixes should be consistently applied to all added documents.

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[code conventions]: ../../.editorconfig "View EditorConfig settings"
[continuous integration code validation]: ../../.travis.yml "View Travis CI settings"

<!-- project files -->

[changes.txt]: ./changes.txt "View the latest Treaty of Babel change log"

[rev9]: ./rev9 "original Treaty of Babel documents"
[rev9 md]: ./rev9/babel_rev9.md
[rev9 txt]: ./rev9/babel_rev9.txt
[rev9 Live]: https://htmlpreview.github.io/?https://github.com/tajmone/if-specs/blob/master/treaty/upstream/rev9/babel_rev9.html "Live HTML Preview"

<!-- EOF -->
