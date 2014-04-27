# transform [WIP]

> Transform (selected) text in atom editor.

A collection of usefull text transformations.

The inspiration for this package comes comes from several TextMate
packages. The small helpers like `HTML > URI-Encode` are the only
thing I really miss, however I think these "transformations" of the
current selection are better bundled together. For example, one
might need to URI-encode a small snippet of text outside of a
`.html` file.

## Features

- adds commands to apply [transformations][#transformations] to the selected text
- works with multiple selections (like the built-in `Edit > Text` Commands)

## Included Transformations

The following string methods from [`underscore.string`](https://github.com/epeli/underscore.string)
are included as commands:

- **`capitalize`**
- **`clean`**
- **`trim`**
- **`swapCase`**
- **`capitalize`**
- **`titleize`**
- **`camelize`**
- **`classify`**
- **`underscored`**
- **`dasherize`**
- **`humanize`**
- **`slugify`**
- **`stripTags`**
- **`escapeHTML`**
- **`unescapeHTML`**
- **`countCharacter`**


## Open Questions

I am currently thinking about these topics 
and would appreciate input from the community: 

- how to organize the different commands internally
- how to organize different command (groups) wrt menus, etc?
    - group it all in `Packages > Transform > …` and let the user configure which further menus to add where?
- does a base package extensible by plugins (ala `autocomplete-plus`) make sense?

## Help out

Contributions are more than welcome.  
You can also give input to the open questions.
