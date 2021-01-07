# Z-Machine Specs Sources

AsciiDoc sources for the Z-Machine Standards.

> **WIP** — The AsciiDoc port is still a work-in-progress draft.
> See [`../TODO.md`][TODO] for details about its status and pending tasks.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Folder Contents](#folder-contents)
- [Adaptations and Convention](#adaptations-and-convention)
    - [Book Structure](#book-structure)
    - [Sections Numbering](#sections-numbering)
        - [Level 2 Sections and Section TOCs](#level-2-sections-and-section-tocs)
        - [Inline Sections](#inline-sections)
- [References](#references)

<!-- /MarkdownTOC -->

-----

# Folder Contents

- [`build.sh`][build.sh] — generates [`../Z-Machine-Standards.html`][zmachine html] from [`zmachine.asciidoc`][zmachine ad].
- [`zmachine.asciidoc`][zmachine ad] — main document with Preamble and `include::` directives:
    + `*.adoc` — sections and appendices.

# Adaptations and Convention

The original document was slightly adapted to better meet the AsciiDoc standard way of formatting documents; these changes are merely typographical and aesthetic and don't affect the document's contents.

## Book Structure

In order to reproduce the original book structure, the AsciiDoc document port has been set as `:doctype: book`, which allows to exploit Parts titles as found in the index page of the original.

Entries which are Chapters in the AsciiDoc port are referred to as "sections" in the upstream document, therefore the same convention was imposed on the ported document.

## Sections Numbering

In the upstream document, many section numbers are found on independent lines. E.g.:

> **2.2**
>
> These values are […]
>
> **2.2.1**
>
> The operations of […]

Some of these section numbers match sections which have titles in the page's TOC (usually, Level 2 Sections), while others are just visual markers with no associated title (usually, Sections with Level 3 or greater) and are used to provide HTML anchors for cross reference linking.

The original section numbering system required some adaptations in order to preserved in a functional manner in the AsciiDoc port of the document.
Different solutions were adopted depending on the type of section number and its context, as described in the following sub-sections.

It's important to note here that, in order to preserve the original numbering scheme and the inline sections numbers (a feature not natively supported by AsciiDoc), the adopted solutions mix automated numbering with manually assigned section numbers — which makes future additions of contents complicate to handle.

Since no future updates to the original document are expected, this should be fine.

> **NOTE** — In the remote eventuality that the upstream document is updated with new contents (or in case someone wished to further develop this document) all the manually defined section numbers would have to be updated according to the numbering shifts introduced by new sections — a rather impractical solution, to say the least.
>
> Alternatively, it should be possible to exploit Asciidoctor's [counters] to enforce an automated section numbering scheme, but in this case we'd have to manually rename all sections' anchor IDs, since they currently use their absolute section number as identifiers, otherwise cross references would be out of sync.

### Level 2 Sections and Section TOCs

In the upstream document, individual pages often begin with a TOC offering links to Level 2 Sections in the page:

> # 1. The memory map
>
> ---
>
> 1.1 [Regions of memory](#) / 1.2 [Addresses](#)
>
> ---
>
> **1.1**
>
> The memory map of […].

The title of these sections is only presented in the page TOC, and is omitted in the actual section.

In the AsciiDoc port, Level 2 Sections were implemented as titled sections, which is more conformant with the AsciiDoc way of structuring documents:

> # 1. The memory map
>
> ## 1.1. Regions of memory
>
> The memory map of […].

This adaptation ensures that Asciidoctor will be handle correctly auto-generation of Table of Contents across different output formats, and regardless of whether the document is generated as a single document or split into single pages per chapter.

### Inline Sections

Section numbers which have no title associated in the TOC were preserved as inline section numbers, but instead of being kept on independent lines they were placed at the beginning of paragraphs, and a section sign (§) was prefixed to them. E.g.:

> §1.1.1. Dynamic memory can […]


-------------------------------------------------------------------------------

# References

<!-- MarkdownTOC:excluded -->
## Asciidoctor

- [Asciidoctor Documentation]
- [AsciiDoc Language Documentation]:
    + Sections:
        * [Section Titles and Levels]
    + [Counters]


<!-- MarkdownTOC:excluded -->
## Typography

- [Wikipedia » (typography)]
- [Wikipedia » Section sign]
- [Wikipedia » Pilcrow]
- [_Typography for Lawyers_ » paragraph and section marks]

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>


<!-- project files -->

[build.sh]: ./build.sh "View script source"
[zmachine ad]: ./zmachine.asciidoc "View source document"

[zmachine html]: ../Z-Machine-Standards.html "View HTML output file"
[TODO]: ../TODO.md "View the list of pending tasks..."

<!-- Asciidoctor -->

[Asciidoctor Documentation]: https://docs.asciidoctor.org/asciidoctor/latest/ "Asciidoctor Documentation at asciidoctor.org"

[AsciiDoc Language Documentation]: https://docs.asciidoctor.org/asciidoc/latest/ "AsciiDoc Language Documentation at asciidoctor.org"
[Counters]: https://docs.asciidoctor.org/asciidoc/latest/attributes/counters/ "learn more about counters on Asciidoctor's Language Documentation"
[Section Titles and Levels]: https://docs.asciidoctor.org/asciidoc/latest/sections/titles-and-levels/ "learn more about Section Titles and Levels on Asciidoctor's Language Documentation"

<!-- typography links -->

[Wikipedia » Pilcrow]: https://en.wikipedia.org/wiki/Pilcrow
[Wikipedia » Section sign]: https://en.wikipedia.org/wiki/Section_sign
[Wikipedia » (typography)]: https://en.wikipedia.org/wiki/Section_(typography)

[_Typography for Lawyers_ » paragraph and section marks]: https://typographyforlawyers.com/paragraph-and-section-marks.html

<!-- EOF -->
