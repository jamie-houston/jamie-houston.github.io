---
layout: default
---

# Welcome to Jamie Houston's Blog

A collection of development tools, tips, and tech adventures. Here you'll find posts about useful development tools, setup guides, and various technical explorations.

[Resume](resume.html) | [GitHub](https://github.com/jamie-houston)

## Recent Posts

<ul>
  {% for post in site.posts limit:5 %}
    <li>
      <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
      <span class="post-date">{{ post.date | date: "%B %d, %Y" }}</span>
    </li>
  {% endfor %}
</ul>

## Useful Tools

* [fselect](https://github.com/jhspetersson/fselect)
* [iTerm](https://iterm2.com/) - Terminal replacement
  * [Fish Shell](https://fishshell.com/) - Bash replacement
  * [tide](https://github.com/IlanCosman/tide) - Fish prompt
  * [fischer](https://github.com/jorgebucaran/fisher) - Fish package manager
  * [nvm.fish](https://github.com/jorgebucaran/nvm.fish) - node package manager for fish
* [rectangle](https://rectangleapp.com/) - OSX Window management
* [Jetbrains Toolbox](https://www.jetbrains.com/toolbox-app/) - Manage all jetbrains apps
* [iStat](https://bjango.com/mac/istatmenus/) - Monitor Computer Stats
* [Aerial](https://aerialscreensaver.github.io/) - Screen saver with Apple TV lock screen videos
* [The Fuck](https://github.com/nvbn/thefuck) - Fix any oopsies in your shell
* [JD-Gui](http://java-decompiler.github.io/) - View contents of jar/aar
* [Vysor](https://www.vysor.io/) - View Android device in OSX

## Useful Scripts & Guides

* [Set python3 as default](https://code2care.org/pages/set-python-as-default-version-macos) - Update MacOS Python to 3
* [Make Fish Shell Default](https://flaviocopes.com/macos-terminal-setup/)
* [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts) - install fonts for iterm/Tide

## Android/Gradle Tools

* [Dependency Analysis Plugin](https://github.com/autonomousapps/dependency-analysis-android-gradle-plugin/wiki/Adding-to-your-project) - Find unused dependencies