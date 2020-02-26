# Glulx Specs Sources

AsciiDoc sources for the Glulx Specification.

> **WIP** — The AsciiDoc port is still a work-in-progress draft.
> See [`../TODO.md`][TODO] for details about its status and pending tasks.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Folder Contents](#folder-contents)
- [Adopted Conventions](#adopted-conventions)
    - [Glulx Version Attributes](#glulx-version-attributes)
- [Editing Problems Workarounds](#editing-problems-workarounds)
    - [Special Symbols](#special-symbols)
- [List of Adaptation Changes](#list-of-adaptation-changes)
    - [Bracketed Asides](#bracketed-asides)
    - [XRrefs](#xrrefs)
        - [Section 0.2](#section-02)
        - [Section 2.9](#section-29)

<!-- /MarkdownTOC -->

-----

# Folder Contents

- [`build.sh`][build.sh] — generates [`../Glulx-Specification.html`][Glulx html] from [`glulx.asciidoc`][glulx ad].
- [`glulx.asciidoc`][glulx ad] — main document with Preamble and `include::` directives:
    + [`glulx0.adoc`][glulx0] — _Introduction_ (Ch. 0 in original).
    + [`glulx1.adoc`][glulx1] — Ch. _1. The Machine_.
    + [`glulx2.adoc`][glulx2] — Ch. _2. Dictionary of Opcodes_.
        * [`glulx-opcodes.csv`][opcodes.csv] — CSV list for the "Glulx Opcodes" table.


# Adopted Conventions

## Glulx Version Attributes

In the document Header (beginning of [`glulx.asciidoc`][glulx ad]) two custom attributes are defined to store the current Glulx version number and its hexadecimal representation in story-file headers:

```AsciiDoc
:GlulxVersion:         3.1.2
:GlulxVersionHex: 0x00030102
```

This is a convenient and [DRY] way to ensure that all references to the current Glulx version (and its Hex representation in file headers) are automatically updated via a single attribute definition.
For example, they are both mentioned together in §1.4. "The Header":

```AsciiDoc
This specification is version {GlulxVersion}, so a game file
generated to this spec would contain {GlulxVersionHex}.
```

which will be rendered as:

> This specification is version 3.1.2, so a game file generated to this spec would contain 0x00030102.

The `GlulxVersion` attribute is also used in the document Header to define its revision number:

```AsciiDoc
:revnumber: {GlulxVersion}
```

# Editing Problems Workarounds

Some solutions adopted to circumvent some editing problems.

## Special Symbols

Because the AsciiDoc syntax is very hard to syntax highlight, most general purpose editors tend to break up when they encounter some literal symbols that also have a formatting meaning in AsciiDoc.
When this happens, the editor loose track of the document semantics, and starts to break functionality like indexing, etc.

To prevent this from happening, all literal occurrences of the following symbols were substituted with [predefined attributes for character replacements]:

- `*` &rarr; `{asterisk}`
- `^` &rarr; `{caret}`

# List of Adaptation Changes

Porting the specs document to AsciiDoc called for some contents adaptations, either out of necessity or to better embrace the AsciiDoc way of doing things, possibly enhancing the reading experience.

## Bracketed Asides

The original document contained numerous side-notes enclosed within double square brackets (i.e. "[[Some text.]]"), either inline with the text flow or as independent paragraphs.

I've arbitrarily converted these asides into either admonitions blocks or footnotes — as a general rule, inline bracketed notes were mostly converted to footnotes, and standalone bracketed notes to admonitions, but ultimately I decided based on their relevance to context.

In one occasion, a bracketed aside was converted to a footnote (20) inside another aside rendered as an admonition block (end of §2.18).

In a few places, where an aside was converted to an admonition block, when the aside text started with "Note…", I've removed the "Note" text since it became redundant in the new context.

These are just aesthetic changes that don't affect the document contents in any significant way, but hopefully they shall enhance the reading experience.

## XRrefs

### Section 0.2

In the original document, Chapter "Introduction" was numbered 0, but it's not numbered in the AsciiDoc version due to the impossibility of adopting section number zero.
This affects some XRefs:

- 4 occurences of `See <<Glulx and Other IF Systems>>.`

In the original they showed as:

> See section 0.2, "Glulx and Other IF Systems".

whereas here they now show as (with `:xrefstyle: full`):

>  See Glulx and Other IF Systems.

(No "Sec." signifier, nor quotes around the title.)

This is correct from the AsciiDoc stand point.

### Section 2.9

There are three XRefs to section 2.9, "Memory Allocation Heap".

The problem is that there's another section with the same identical title (§1.8.3), so it can't be XRefed merely by its title.
For this reason I've added the custom Anchor ID `[[Memory-Allocation-Heap-2]]` to the latter.

> **NOTE** — there are no XRefs to §1.8.3 though!

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[DRY]: https://en.wikipedia.org/wiki/Don%27t_repeat_yourself "DRY (Don't repeat yourself) — Wikipedia article"

<!-- AsciiDoctor Manual -->

[predefined attributes for character replacements]: https://asciidoctor.org/docs/user-manual/#charref-attributes "Read more about this topic in the AsciiDoctor Manual"

<!-- project files -->

[build.sh]: ./build.sh "View script source"
[glulx ad]: ./glulx.asciidoc "View source document"
[glulx0]: ./glulx0.adoc "View source document"
[glulx1]: ./glulx1.adoc "View source document"
[glulx2]: ./glulx2.adoc "View source document"
[opcodes.csv]: ./glulx-opcodes.csv "View CVS file"

[Glulx html]: ../Glulx-Specification.html "View HTML output file"
[TODO]: ../TODO.md "View the list of pending tasks..."

<!-- EOF -->
