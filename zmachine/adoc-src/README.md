# Z-Machine Specs Sources

AsciiDoc sources for the Z-Machine Standards.

> **WIP** — The AsciiDoc port is still a work-in-progress draft.
> See [`../TODO.md`][TODO] for details about its status and pending tasks.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Folder Contents](#folder-contents)

<!-- /MarkdownTOC -->

-----

# Folder Contents

- [`build.sh`][build.sh] — generates [`../Z-Machine-Standards.html`][zmachine html] from [`zmachine.asciidoc`][zmachine ad].
- [`zmachine.asciidoc`][zmachine ad] — main document with Preamble and `include::` directives:
    + `*.adoc` — sections and appendices.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

<!-- project files -->

[build.sh]: ./build.sh "View script source"
[zmachine ad]: ./zmachine.asciidoc "View source document"

[zmachine html]: ../Z-Machine-Standards.html "View HTML output file"
[TODO]: ../TODO.md "View the list of pending tasks..."

<!-- EOF -->
