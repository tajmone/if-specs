# Glk Specification

[![CC BY-NC-SA 3.0 License][license badge]][CC BY-NC-SA 3.0]&nbsp;
[![Glk version][glk badge]][Glk homepage]&nbsp;

The [Glk API Specification], version 0.7.5, by [Andrew Plotkin], licensed under [CC BY-NC-SA 3.0].


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Folder Contents](#folder-contents)
- [About Glk](#about-glk)
- [License](#license)

<!-- /MarkdownTOC -->

-----

# Folder Contents

- [`/upstream/`](./upstream/) — original Glk API specs documents:
    + [`/0.7.5/`][0.7.5] — Feb 13, 2017.
    + [`changes.txt`][changes.txt] — latest Glk API specs change log.

# About Glk

From the [Glk API Specification]:

> Glk defines a portable API (programming interface) for applications with text UIs (user interfaces.)
> It was primarily designed for interactive fiction, but it should be suitable for many interactive text utilities, particularly those based on a command line.
>
> [...] TADS, Glulx, and Infocom's Z-machine have nearly identical interface capabilities; each allows a program to...
>
> - print an indefinite stream of text into an output buffer, with some style control
> - input a line of text
> - display a few lines of text in a small separate window
> - store information in a file, or read it in
>
> and so on.
> However, the implementation of these capabilities vary widely between platforms and operating systems.
> Furthermore, this variance is transparent to the program (the adventure game.)
> The game does not care whether output is displayed via a character terminal emulator or a GUI window; nor whether input uses Mac-style mouse editing or EMACS-style control key editing. [...]
>
> Glk tries to draw a line between the parts of the text adventure world which are identical on all IF systems, and different on different operating systems, from the parts which are unique to each IF system but identical in all OSs.
> The border between these two worlds is the Glk API.


# License

- [`LICENSE`][LICENSE] — full text of the [CC BY-NC-SA 3.0] License.

Written by [Andrew Plotkin], Copyright 2020 by the [Interactive Fiction Technology Foundation].

From the [Glk API Specification]:

> Copyright 2020 by the [Interactive Fiction Technology Foundation].
> This specification is licensed under a [Creative Commons Attribution-Noncommercial-Share Alike 3.0 Unported] License

In summary (but not a substitute for the [full license text][LICENSE]):

> ### You are free to:
>
> - **Share** — copy and redistribute the material in any medium or format
> - **Adapt** — remix, transform, and build upon the material
>
> The licensor cannot revoke these freedoms as long as you follow the license terms.
>
> ### Under the following terms:
>
> - **Attribution** — You must give [appropriate credit], provide a link to the license, and [indicate if changes were made]. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
> - **NonCommercial** — You may not use the material for [commercial purposes].
> - **ShareAlike** — If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original.
> - **No additional restrictions** — You may not apply legal terms or [technological measures] that legally restrict others from doing anything the license permits.
>
> ### Notices:
>
> You do not have to comply with the license for elements of the material in the public domain or where your use is permitted by an applicable [exception or limitation].
>
> No warranties are given. The license may not give you all of the permissions necessary for your intended use. For example, other rights such as [publicity, privacy, or moral rights] may limit how you use the material.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Interactive Fiction Technology Foundation]: https://iftechfoundation.org/ "Visit the Interactive Fiction Technology Foundation website"

<!-- Glk links -->

[Glk homepage]: https://eblong.com/zarf/glk/index.html "Visit the Glk homepage at eblong.com"
[Glk API Specification]: https://eblong.com/zarf/glk/Glk-Spec-075.html "View the upstream Glk API Specification at eblong.com"

<!-- CC BY-NC-SA 3.0 -->

[CC BY-NC-SA 3.0]: https://creativecommons.org/licenses/by-nc-sa/3.0/ "View CC BY-NC-SA 3.0 License at creativecommons.org"
[Creative Commons Attribution-Noncommercial-Share Alike 3.0 Unported]: https://creativecommons.org/licenses/by-nc-sa/3.0/ "View CC BY-NC-SA 3.0 License at creativecommons.org"

[appropriate credit]: https://wiki.creativecommons.org/License_Versions#Detailed_attribution_comparison_chart "More info..."
[commercial purposes]: https://wiki.creativecommons.org/Frequently_Asked_Questions#does-my-use-violate-the-noncommercial-clause-of-the-licenses "More info..."
[exception or limitation]: https://wiki.creativecommons.org/Frequently_Asked_Questions#do-creative-commons-licenses-affect-exceptions-and-limitations-to-copyright-such-as-fair-dealing-and-fair-use "More info..."
[indicate if changes were made]: https://wiki.creativecommons.org/wiki/License_Versions#Modifications_and_adaptations_must_be_marked_as_such "More info..."
[publicity, privacy, or moral rights]: https://wiki.creativecommons.org/Considerations_for_licensors_and_licensees "More info..."
[technological measures]: https://wiki.creativecommons.org/License_Versions#Application_of_effective_technological_measures_by_users_of_CC-licensed_works_prohibited "More info..."

<!-- badges -->

[license badge]: https://img.shields.io/badge/license-CC%20BY--NC--SA%203.0-00b5da.svg
[glk badge]: https://img.shields.io/badge/Glk-0.7.5-brightgreen "Glk API specification version"

<!-- project files -->

[LICENSE]: ./LICENSE "View the full text of the CC BY-NC-SA 3.0 license"
[changes.txt]: ./upstream/changes.txt "View the Glk API specification change log"
[0.7.5]: ./upstream/0.7.5 "original Glk API v0.7.5 specification docs"

<!-- people -->

[Andrew Plotkin]: https://github.com/erkyrath "View Andrew Plotkin's GitHub profile"

<!-- EOF -->
