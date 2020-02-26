# Glulx AsciiDoc Specs TODOs

Status info and pending tasks for the AsciiDoc port of the Glulx Specification.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [TODOs](#todos)
    - [README Docs](#readme-docs)
    - [AsciiDoc](#asciidoc)
        - [Bracketed Asides](#bracketed-asides)
        - [Glulx References](#glulx-references)
        - [Typography Check-list](#typography-check-list)
        - [XRefs](#xrefs)
        - [Footnotes](#footnotes)
        - [External Links](#external-links)
    - [HTML Document](#html-document)
        - [Syntax Highlighting](#syntax-highlighting)
        - [Haml Templates](#haml-templates)
        - [Sass/CSS](#sasscss)
    - [Diagrams](#diagrams)
    - [Coalesced AsciiDoc Document](#coalesced-asciidoc-document)
- [Pre-Merge Check-list](#pre-merge-check-list)

<!-- /MarkdownTOC -->

-----

# TODOs

Pending tasks organized by category.

## README Docs

- [ ] Add HTML Live Preview links (pointing to the development branch):
    + [ ] `./README.md`:
        * [ ] to `Glulx-Specification.html`:
            - [ ] at beginning of document.
            - [ ] in "Folder Contents".
        * [ ] to the lastest `/upstream/` HTML docs:
            - [ ] in "Folder Contents".
    + [ ] `./upstream/README.md`:
        * [ ] to all the HTML docs of every upstream Glulx version.

## AsciiDoc

Tasks relating to adaptations and formatting of the AsciiDoc sources.

- [ ] **TOC Hacks** — add preprocessor directives hacks to optimize the way the TOC is rendered on GitHub WebUI.

###  Bracketed Asides

The original document contains numerous side-notes enclosed within double square brackets (i.e. "[[Some text.]]"), either inline with the text flow or as independent paragraphs.


- [x] Convert all the original `[bracketed comments]` into either:
    + An admonition block.
    + A footnote.
- [x] Document these changes.

### Glulx References

Unlike opcodes literals (which should always be formatted as inline code), there are some abstract references (parameters, etc.) which might need to be styled differently, to avoid confusion and make the text more intuitive to read.

- [ ] Decide how to format various Glulx syntax elements (as code, bold, red?):
    + [ ] The `L1`, `L2`, `S1`, etc. parameters.
    + [ ] Memory section/segment names (`StackPtr`, `FramePtr`, `FrameLen`, etc.).
    + [ ] References like `DestType`, `DestAddr`, `PC`, etc.

### Typography Check-list

Verify that all typography is properly formatted:

- [ ] **SMART TYPOGRAPHY**:
    + [ ] **Curly quotes**:
        * [ ] Make all straight double-quotes curly.
        * [ ] Make all straight single-quotes curly.
        * [ ] Ensure that straight apostrophes not automatically handled by Asciidoctor are set to the right curliness.
        * [ ] Check that all em-dashes are set properly.
        * [ ] Check all unconstrained single/double quotes occurrences.
    + [ ] **Unconstrained quotes** — check that edge-cases are handled correctly:
        * [ ] strong.
        * [ ] emphasis.

### XRefs

Add internal cross references and handle edge-cases.

- [ ] Convert all textual cross-references to linkable XRefs.
    + [ ] Check that the auto-generated xrefstyles are OK.
- [ ] Add custom anchor IDs in case of multiple sections with same title:
    + [ ] 2.9. _Memory Allocation Heap_ — added `[[Memory-Allocation-Heap-2]]` due to §1.8.3.
- [ ] Add custom anchor IDs for cross-references inside footnotes:
    + [ ] 2.11. _Output_ — added `[[Output]]` due to footnote 3 (in §1.4).

#### Section 0.2

In the original document, Chapter "Introduction" was numbered 0, but it's not numbered in the AsciiDoc version due to the impossibility of adopting section number zero.
This affects the way cross reference to §0.2 are rendered:

- 4 occurences of `See <<Glulx and Other IF Systems>>.`

In the original they showed as:

> See section 0.2, "Glulx and Other IF Systems".

whereas now (using `:xrefstyle: full`) they are rendere as:

>  See Glulx and Other IF Systems.

(No "Sec." signifier, nor quotes around the title.)

Although this is correct from the AsciiDoc stand point, I could customize the way the XRef is presented for this specific case, by adding an `reftext=` to the custom Anchor ID, so that it would be rendered as:

> See "Glulx and Other IF Systems".

or

> See section "Glulx and Other IF Systems".

... so that at least the quotes are preserved for consistency with other cross references.

### Footnotes

- [ ] Check that all footnotes are rendered correctly and, if required, fix them with an inline `pass:[]` macro accordingly.

### External Links

- [ ] Use `https://` instead of `http://` for all website that support it.
- [ ] Fix dead links by pointing at Wayback Machine archived copies.

## HTML Document

Tasks relating to the HTML backend and final document.

### Syntax Highlighting

- [ ] Create custom [Highlight] syntaxes:
    + [ ] Glulx.
    + [ ] Inform 6.

### Haml Templates

Add custom Haml template for the HTML backend:

- [ ] `block_listing.html.haml` — for source code blocks using Highlight.

### Sass/CSS

Custom styles added to the default Asciidoctor template, via Sass/SCSS.

- [ ] Syntax highlighting color themes:
    + [ ] Glulx.
    + [ ] Inform 6 (in §2.17).
- [ ] Syntax definitions mockups:
    + [ ] Glulx.
- [ ] Add script to compile Sass to CSS and generate the doc-info file with the embedded CSS.

## Diagrams

Replaces the 18 ASCII-Art diagrams with SVG images created via [Dia Diagram Editor].

- [ ] §1.2. Memory map segments.
- [ ] §1.3.1. Stack call frame.
- [ ] §1.3.2. Call stubs.
- [ ] §1.4. Header.
- [ ] §1.5. Instruction format encoding.
- [ ] §1.6.1.2. Unencoded Unicode strings.
- [ ] §1.6.1.4:
    + [ ] The string-decoding table format.
    + [ ] String-decoding nodes: Branch.
    + [ ] String-decoding nodes: String terminator.
    + [ ] String-decoding nodes: Single character.
    + [ ] String-decoding nodes: C-style string.
    + [ ] String-decoding nodes: Single Unicode character.
    + [ ] String-decoding nodes: C-style Unicode string.
    + [ ] String-decoding nodes: Double-indirect reference.
    + [ ] String-decoding nodes: Indirect reference with arguments.
    + [ ] String-decoding nodes: Double-indirect reference with arguments.
- [ ] §1.6.2. Functions structure.
- [ ] §1.7. Floating-Point Numbers.

## Coalesced AsciiDoc Document

Build a single AsciiDoc document from the split sources via the AsciiDoc coalescer.

- [ ] Add AsciiDoc coalescer to `/_assets/` folder.
- [ ] Enable coalescer in `./build.sh`.
- [ ] Document it in READMEs.

-------------------------------------------------------------------------------

# Pre-Merge Check-list

Tasks to handle before merging into `master` branch.

- [ ] Fix HTML Live links — edit the URLs so they'll point to `master` branch instead of the development branch.

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

<!-- 3rd party tools -->

[Dia Diagram Editor]: http://dia-installer.de/ "Visit Dia's website"
[Highlight]: http://www.andre-simon.de "Visit Highlight website"

<!-- EOF -->
