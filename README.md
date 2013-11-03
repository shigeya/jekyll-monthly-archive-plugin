# Monthly archive plugin for Jekyll

Generate a monthly archive much like MovableType does.

This code is based on following hacks:

- https://gist.github.com/ilkka/707909
- https://gist.github.com/ilkka/707020
- https://gist.github.com/nlindley/6409459


# Installation

To use this plugin,

- Place `_plugins/monthly_archive_plugin.rb` into `_plugins`
directory of Jekyll site working directory.

- Copy `_layouts/monthly_archive.html` into `_layouts` directory of
Jekyll site working directory, then edit it appropriately.

# Parameter configuration

Archive layout can be specified by `layout` key in the `monthly_archive`
site configuration. Default is `monthly_archive`.

Archive generation directory prefix can be specified by `path` key in the `monthly_archive`
site configuration. If specified, archive will be generated in
`PATH/YYYY/MM/index.html`, where `PATH` is substituted by `path`, `YYYY` and `MM` are
year and month. Default is null string.


# Liquid variables for template

`page.year`, `page.month` contains the year and month of the archive page.

`page.date` also contains date (`page.year/page.month/1`)

# Copyright

The MIT License (MIT)

Copyright (c) 2013 Shigeya Suzuki

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
