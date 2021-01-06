# Original Z-Machine Specs

This directory contains copies of the original Z-Machine Standards Document in html format, organized into folders by version number.

The documents were downloaded from:

- https://inform-fiction.org/zmachine/standards/index.html

-------------------------------------------------------------------------------

> **NOTE** — If navigating the repository locally, click on file names to preview the HTML documents, otherwise (if you're previewing this document on GitHub) click on the "(Live)" links next to each file for a live HTML preview.

- [`/1.1/`][1.1] — Feb 24, 2014.
    + [`index.html`][index] ([Live][indexLive]) — Table of Contents
    + [`preface.html`][preface] ([Live][prefaceLive]) — Preface
    + [`overview.html`][overview] ([Live][overviewLive]) — Overview of Z-machine architecture
    + _Fundamentals_
        * [`sect01.html`][sect01] ([Live][sect01Live]) — 1. The memory map
        * [`sect02.html`][sect02] ([Live][sect02Live]) — 2. Numbers and arithmetic
        * [`sect03.html`][sect03] ([Live][sect03Live]) — 3. How text and characters are encoded
        * [`sect04.html`][sect04] ([Live][sect04Live]) — 4. How instructions are encoded
        * [`sect05.html`][sect05] ([Live][sect05Live]) — 5. How routines are encoded
        * [`sect06.html`][sect06] ([Live][sect06Live]) — 6. The game state: storage and routine calls
    + _Input/Output_
        * [`sect07.html`][sect07] ([Live][sect07Live]) — 7. Output streams and file handling
        * [`sect08.html`][sect08] ([Live][sect08Live]) — 8. The screen model
        * [`sect09.html`][sect09] ([Live][sect09Live]) — 9. Sound effects
        * [`sect10.html`][sect10] ([Live][sect10Live]) — 10. Input streams and devices
    + _Tables_
        * [`sect11.html`][sect11] ([Live][sect11Live]) — 11. The format of the header
        * [`sect12.html`][sect12] ([Live][sect12Live]) — 12. The object table
        * [`sect13.html`][sect13] ([Live][sect13Live]) — 13. The dictionary and lexical analysis
    + _Instruction Set_
        * [`sect14.html`][sect14] ([Live][sect14Live]) — 14. 14. Complete table of opcodes (with Inform assembly syntax)
        * [`sect15.html`][sect15] ([Live][sect15Live]) — 15. Dictionary of opcodes
    + _An Unusual Font_
        * [`sect16.html`][sect16] ([Live][sect16Live]) — 16. Font 3 and character graphics
    + _Appendices_
        * [`appa.html`][appa] ([Live][appaLive]) — A. Error messages and debugging
        * [`appb.html`][appb] ([Live][appbLive]) — B. Conventional contents of the header
        * [`appc.html`][appc] ([Live][appcLive]) — C. Resources available (with WWW links)
        * [`appd.html`][appd] ([Live][appdLive]) — D. A short history of the Z-machine
        * [`appe.html`][appe] ([Live][appeLive]) — E. Statistics
        * [`appf.html`][appf] ([Live][appfLive]) — F. Canonical story files

-------------------------------------------------------------------------------

In the unlikely event that a new version of the specs is released, we can track changes by diffing the new html files with the previous version, and manually integrate the changes into the AsciiDoc sources.

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

<!-- project files -->

[1.1]: ./1.1/ "original Z-Machine Standards Document v1.1"

[index]: ./1.1/index.html "View HTML document locally"
[preface]: ./1.1/preface.html "View HTML document locally"
[overview]: ./1.1/overview.html "View HTML document locally"
[sect01]: ./1.1/sect01.html "View HTML document locally"
[sect02]: ./1.1/sect02.html "View HTML document locally"
[sect03]: ./1.1/sect03.html "View HTML document locally"
[sect04]: ./1.1/sect04.html "View HTML document locally"
[sect05]: ./1.1/sect05.html "View HTML document locally"
[sect06]: ./1.1/sect06.html "View HTML document locally"
[sect07]: ./1.1/sect07.html "View HTML document locally"
[sect08]: ./1.1/sect08.html "View HTML document locally"
[sect09]: ./1.1/sect09.html "View HTML document locally"
[sect10]: ./1.1/sect10.html "View HTML document locally"
[sect11]: ./1.1/sect11.html "View HTML document locally"
[sect12]: ./1.1/sect12.html "View HTML document locally"
[sect13]: ./1.1/sect13.html "View HTML document locally"
[sect14]: ./1.1/sect14.html "View HTML document locally"
[sect15]: ./1.1/sect15.html "View HTML document locally"
[sect16]: ./1.1/sect16.html "View HTML document locally"
[appa]: ./1.1/appa.html "View HTML document locally"
[appb]: ./1.1/appb.html "View HTML document locally"
[appc]: ./1.1/appc.html "View HTML document locally"
[appd]: ./1.1/appd.html "View HTML document locally"
[appe]: ./1.1/appe.html "View HTML document locally"
[appf]: ./1.1/appf.html "View HTML document locally"

<!-- HTML Live Previews -->


[indexLive]: https://htmlpreview.github.io/?https://github.com/tajmone/if-specs/blob/master/zmachine/upstream/1.1/index.html "Live HTML Preview from GitHub"
[prefaceLive]: https://htmlpreview.github.io/?https://github.com/tajmone/if-specs/blob/master/zmachine/upstream/1.1/preface.html "Live HTML Preview from GitHub"
[overviewLive]: https://htmlpreview.github.io/?https://github.com/tajmone/if-specs/blob/master/zmachine/upstream/1.1/overview.html "Live HTML Preview from GitHub"
[sect01Live]: https://htmlpreview.github.io/?https://github.com/tajmone/if-specs/blob/master/zmachine/upstream/1.1/sect01.html "Live HTML Preview from GitHub"
[sect02Live]: https://htmlpreview.github.io/?https://github.com/tajmone/if-specs/blob/master/zmachine/upstream/1.1/sect02.html "Live HTML Preview from GitHub"
[sect03Live]: https://htmlpreview.github.io/?https://github.com/tajmone/if-specs/blob/master/zmachine/upstream/1.1/sect03.html "Live HTML Preview from GitHub"
[sect04Live]: https://htmlpreview.github.io/?https://github.com/tajmone/if-specs/blob/master/zmachine/upstream/1.1/sect04.html "Live HTML Preview from GitHub"
[sect05Live]: https://htmlpreview.github.io/?https://github.com/tajmone/if-specs/blob/master/zmachine/upstream/1.1/sect05.html "Live HTML Preview from GitHub"
[sect06Live]: https://htmlpreview.github.io/?https://github.com/tajmone/if-specs/blob/master/zmachine/upstream/1.1/sect06.html "Live HTML Preview from GitHub"
[sect07Live]: https://htmlpreview.github.io/?https://github.com/tajmone/if-specs/blob/master/zmachine/upstream/1.1/sect07.html "Live HTML Preview from GitHub"
[sect08Live]: https://htmlpreview.github.io/?https://github.com/tajmone/if-specs/blob/master/zmachine/upstream/1.1/sect08.html "Live HTML Preview from GitHub"
[sect09Live]: https://htmlpreview.github.io/?https://github.com/tajmone/if-specs/blob/master/zmachine/upstream/1.1/sect09.html "Live HTML Preview from GitHub"
[sect10Live]: https://htmlpreview.github.io/?https://github.com/tajmone/if-specs/blob/master/zmachine/upstream/1.1/sect10.html "Live HTML Preview from GitHub"
[sect11Live]: https://htmlpreview.github.io/?https://github.com/tajmone/if-specs/blob/master/zmachine/upstream/1.1/sect11.html "Live HTML Preview from GitHub"
[sect12Live]: https://htmlpreview.github.io/?https://github.com/tajmone/if-specs/blob/master/zmachine/upstream/1.1/sect12.html "Live HTML Preview from GitHub"
[sect13Live]: https://htmlpreview.github.io/?https://github.com/tajmone/if-specs/blob/master/zmachine/upstream/1.1/sect13.html "Live HTML Preview from GitHub"
[sect14Live]: https://htmlpreview.github.io/?https://github.com/tajmone/if-specs/blob/master/zmachine/upstream/1.1/sect14.html "Live HTML Preview from GitHub"
[sect15Live]: https://htmlpreview.github.io/?https://github.com/tajmone/if-specs/blob/master/zmachine/upstream/1.1/sect15.html "Live HTML Preview from GitHub"
[sect16Live]: https://htmlpreview.github.io/?https://github.com/tajmone/if-specs/blob/master/zmachine/upstream/1.1/sect16.html "Live HTML Preview from GitHub"
[appaLive]: https://htmlpreview.github.io/?https://github.com/tajmone/if-specs/blob/master/zmachine/upstream/1.1/appa.html "Live HTML Preview from GitHub"
[appbLive]: https://htmlpreview.github.io/?https://github.com/tajmone/if-specs/blob/master/zmachine/upstream/1.1/appb.html "Live HTML Preview from GitHub"
[appcLive]: https://htmlpreview.github.io/?https://github.com/tajmone/if-specs/blob/master/zmachine/upstream/1.1/appc.html "Live HTML Preview from GitHub"
[appdLive]: https://htmlpreview.github.io/?https://github.com/tajmone/if-specs/blob/master/zmachine/upstream/1.1/appd.html "Live HTML Preview from GitHub"
[appeLive]: https://htmlpreview.github.io/?https://github.com/tajmone/if-specs/blob/master/zmachine/upstream/1.1/appe.html "Live HTML Preview from GitHub"
[appfLive]: https://htmlpreview.github.io/?https://github.com/tajmone/if-specs/blob/master/zmachine/upstream/1.1/appf.html "Live HTML Preview from GitHub"

<!-- EOF -->
