## MediaWiki Cheat Sheet for Editors

Basically you can format your text using wiki markup by following [Text Formatting](https://www.mediawiki.org/wiki/Help:Formatting) and [HTML Formatting](https://en.wikibooks.org/wiki/MediaWiki_User_Guide/Text_Formatting).

The following are some tips and advanced features.

- Starting from "Level 2 Sections" (i.e., `== Section Name Here ==`) in content. Leave "Level 1" (i.e., `= Title =`) for the page title only.
- [Expand or Collapse Elements](https://www.mediawiki.org/wiki/Manual:Collapsible_elements)

  ***Note:*** This feature does not work in preview. You have to store the edited page first.

  - Expand or collapse text

  ```
  <div class="mw-collapsible">
  This text is collapsible.
  </div>
  ```

  - Expand or collapse tables

  ```
  {| class="mw-collapsible mw-collapsed wikitable"
  ! The header || remains visible
  |-
  | This  content || is hidden
  |-
  | at first || load time
  |}
  ```

  - Collapse as default

  ```
  <div class="mw-collapsible mw-collapsed">
  Text.
  </div>
  ```
- [Anchors and Links within the Same Page](http://stackoverflow.com/q/23656415/1833118)
  - Link to sections within the same page

  ```
  [[#SectionTitle|displayed text]]
  ```
  - Link to a specific place within the same page

  ```
  <div id="NameOfAnchorHere">optional text</div>
  [[#NameOfAnchorHere| test]]
  ```
