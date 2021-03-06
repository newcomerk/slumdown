The slumdown package
================
Danielle Navarro
19 Jan 2020

<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/djnavarro/slumdown.svg?branch=master)](https://travis-ci.org/djnavarro/slumdown)
[![Codecov test
coverage](https://codecov.io/gh/djnavarro/slumdown/branch/master/graph/badge.svg)](https://codecov.io/gh/djnavarro/slumdown?branch=master)
![Lifecycle
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)
[![CRAN
status](https://www.r-pkg.org/badges/version/slumdown)](https://cran.r-project.org/package=slumdown)
<!-- badges: end -->

<img src="README_files/slumdown.png" width="30%" align="right" />

The *slumdown* package is an experiment in creating a simple “blogdown
native” Hugo theme, one that assumes that posts are written using R
Markdown. It extends the [slum theme for
Hugo](https://github.com/djnavarro/hugo-slum) by providing an interface
for customising the blog within R and a system for generating plots that
use the same colour scheme as the blog post. The *slumdown* package is
only available on GitHub:

``` r
remotes::install_github("djnavarro/slumdown")
```

By default, the *slumdown* package assumes the source code for the site
takes the form of an RStudio project, and will be deployed to GitHub
pages, though neither is strictly necessary. To get started:

``` r
slumdown::new_slum("desired/path/to/my/blog") 
```

This will create a new RStudio project called `blog` (or whatever),
download the slum theme and the example site. From within the project,
initialise the blog using `blogdown`:

``` r
blogdown::serve_site()
```

Blogdown will then generate the [example
site](https://djnavarro.github.io/hugo-slum/) in the `docs` folder,
which provides a short tutorial on how to get started using the package
and what it is capable of.

## Warning\!

On the off chance that anyone plans to use this other than me… probably
not a good idea right now. It is *very* experimental, I’m using it
largely as a method of teaching myself new things, and no part of the
API is stable at the moment.
