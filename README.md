# transform [WIP]

Transform (selected) text in atom editor.

Right now only a proof of concept adding a 'Capitalize' command, 
the idea is to have a collection of usefull snippets…

The inspiration for this package comes comes from several TextMate
packages. The small helpers like `HTML > URI-Encode` are the only
thing I really miss, however I think these "transformations" of the
current selection are better bundled together. For example, one
might need to URI-encode a small snippet of text outside of a
`.html` file.

## Features

- adds commands to apply [transformations][#transformations] to the selected text
- works with multiple selections (like the built-in `Edit > Text` Commands)

## Transformations

### Captitalize

Makes the first letter uppercase.

*Example:* `foo` **=>** `Foo`

## Open Questions

I am currently thinking about these topics 
and would appreciate input from the community.

- how to organize the different commands internally
- how to organize different command (groups) wrt menus, etc?
    - group it all in `Packages > Transform > …` and let the user configure which further menus to add where?
- does a base package extensible by plugins (ala `autocomplete-plus`) make sense?

## Help out

Contributions are more than welcome.  
You can also give input to the open questions.
