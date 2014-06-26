# decrypt [![Build Status](https://travis-ci.org/supertylerc/decrypt.svg?branch=master)](https://travis-ci.org/supertylerc/decrypt) [![Scrutinizer Code Quality](https://scrutinizer-ci.com/g/supertylerc/decrypt/badges/quality-score.png?b=master)](https://scrutinizer-ci.com/g/supertylerc/decrypt/?branch=master)

`decrypt` is a [Ruby][1] script for converting a given hashed password
to its plain-text equivalent.

## Version

The current version of `decrypt` is `0.0.1`.

## Installation

[Clone the repository][2].  Place the file somewhere in [your path][3].
`$HOME/bin` is in my path for all local, non-system scripts.  If you're
not already placing or [symlinking][4] your scripts to a centralized
`bin`-type directory, I strongly encourage you to consider it.  It makes
life easy.

Once you're inside of the directory, run `bundle install` to install the
appropriate gem(s).

Once you've done the above, simply invoke the script by typing:

```
decrypt <password>
```

## Examples

```
╭─tchristiansen52 at us160536 in ~/bin using ‹ruby-2.1.1› 14-04-07 - 23:34:01
╰─○ ./decrypt
Paste hash, including leading characters, below.
> 02320C5E280918


Original hash: 320C5E280918
Plain-Text   : TheCow
╭─tchristiansen52 at us160536 in ~/bin using ‹ruby-2.1.1› 14-04-07 - 23:34:03
╰─○ ./decrypt
Paste hash, including leading characters, below.
> $9$EDXheMdVYJZjqmpBEcMWdVwgJD.mT3/tevdsgJHkn/C


Original hash: $9$EDXheMdVYJZjqmpBEcMWdVwgJD.mT3/tevdsgJHkn/C
Plain-Text   : TheCowGoesOink
╭─tchristiansen52 at us160536 in ~/bin using ‹ruby-2.1.1› 14-04-07 - 23:34:52
╰─○
```

## Author

The script is written by Tyler Christiansen.  You can contact him <a
href="mailto:tyler@oss-stack.io?GitHub - decrypt">via e-mail</a>,
[twitter][5], or check out [his blog][6].

## License

`decrypt` is released under [BSD 2-Clause License][8]. See the [LICENSE][10] file for more details.

[1]: https://www.ruby-lang.org/en/ "Ruby Language Home"
[2]: http://git-scm.com/book/en/Git-Basics-Getting-a-Git-Repository#Cloning-an-Existing-Repository "Clone an Existing Repository"
[3]: http://www.tech-recipes.com/rx/2621/os_x_change_path_environment_variable/ "Modify OS X Path"
[4]: http://gigaom.com/2011/04/27/how-to-create-and-use-symlinks-on-a-mac/ "Symlinking for Mac Users"
[5]: https://twitter.com/oss_stack "Tyler Christiansen's Twitter"
[6]: http://oss-stack.io/ "The Operations Supporting Systems Stack"
[8]: http://opensource.org/licenses/BSD-2-Clause "BSD 2-Clause Definition"
[10]: LICENSE "BSD 2-Clause License"
