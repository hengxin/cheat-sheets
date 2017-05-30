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

### [Links](https://www.mediawiki.org/wiki/Help%3aLinks)

- [Internal links](https://www.mediawiki.org/wiki/Help%3aLinks#Internal_links)
  - Link to sections within the same page

  ```
  [[#SectionTitle|displayed text]]
  ```
  - Link to a specific place within the same page

  ```
  <div id="NameOfAnchorHere">optional text</div>
  [[#NameOfAnchorHere| test]]
  ```

  - Link to sections in another page
  
  ```
  [[Main Page#Concrete_Paragraph|different text2]]
  ```

  - Word-ending links

  ```
  [[Help]]s
  [[Help]]<nowiki />ful advice
  ```

 - Internal link to an image or a file of other types	

  ```
  [[media:example.jpg]]
  [[:file:example.pdf|some alias]]
  ```
- [How to avoid auto-links](https://www.mediawiki.org/wiki/Help%3aLinks#How_to_avoid_auto-links)

  ```
  <nowiki>https://mediawiki.org</nowiki>
  ```

### Pages

- [Rename/Move pages](https://meta.wikimedia.org/wiki/Help:Moving_a_page); More specifically, [How to do rename/move pages](https://meta.wikimedia.org/wiki/Help:Moving_a_page#How_to_do_it)

### [Categories](https://www.mediawiki.org/wiki/Help:Categories)

- [Adding a page to a category](https://www.mediawiki.org/wiki/Help:Categories#Adding_a_page_to_a_category): adding `[[Category:Name]]` to the page
- [Creating a category page](https://www.mediawiki.org/wiki/Help:Categories#Creating_a_category_page):  
  - creating a new page whose name starts with `Category:`
  - specifying `[[Category:PARENT CATEGORY NAME]]` as [parent category](https://commons.wikimedia.org/wiki/Commons:How_to_create_new_categories_or_subcategories)
- [Linking to a category](https://www.mediawiki.org/wiki/Help:Categories#Linking_to_a_category): `[[:Category:Help|Help category]]` or `[[:Category:Help]]`

