Packages
========================================================
author: Moritz Friedrich, Klemens Kurtz
date: 2018-05-14
autosize: true
font-family: 'Trebuchet MS'

Packages?
========================================================


- 2018-04-30 the CRAN package repository features 12.556 available packages.
- Probably the reason why R is so successfull.
- Somebody might have solved your problem.
- https://cran.r-project.org/

<div style="text-align:center;"><img src="packageNumber.png"; width=700 height=400 pos=>

Source: revolutionanalytics.com (2017)


Packages?
========================================================

A bundle of functions, data sets and help pages that you install in addition to the base R installation.


<div style="text-align:center;"><img src="packageSummary.PNG"; width=1100 height=550 pos=>

Source: R-Studio


Why would we need our own package?
========================================================

- The main purpose is not to put your package on CRAN.
- Organise your code to make your life easier - there are conventions!
- They save you time - you don’t need to think about the best way to organise a project, you can just follow a template.
- Standardised conventions lead to standardised tools - if you buy into R’s package conventions, you get many tools for free.
- Also share code in a convinient way - (b2b, via github, …)


```r
“Seriously, it doesn’t have to be about sharing your code (although that is an added benefit!). It is about saving yourself time.” Parker (2014)
```

Source: Wickham (2015)

devtools
========================================================

devtools:

- devtools package: a suite of R functions to automate common development tasks.

- devtools protects you from many potential mistakes, so you can focus on the problem you're interested in, not on developing a package.

- Cheatsheet: R-Studio > Help > Cheatsheets > Package Development with devtools

Source: Wickham (2015)

Git and GitHub
========================================================

- Git is a version control system, a tool that tracks changes to your code and shares those changes with others.
- Git is most useful when combined with GitHub, a website that allows you to share your code with the world.

Why use Git + GitHub?
- It makes sharing your package easy. Any R user can install your package with just two lines of code:


```r
install.packages("devtools")
devtools::install_github("username/packagename")
```

Source: Wickham (2015)


Submit a package to CRAN
========================================================
- If you want your package to have significant traction in the R community, you need to submit it to CRAN.
- The CRAN submission process can be frustrating, but it’s worthwhile.
- Submit to: https://cran.r-project.org/submit.html

1. Pick a version number.
2. Run and document R CMD check.
3. Check that you’re aligned with CRAN policies.
4. Update README.md and NEWS.md.
5. Submit the package to CRAN.
6. Prepare for the next version by updating version numbers.
7. Publicise the new version.

- typical over a 100 submissions a week and only a few volunteers to process them.

Source: Wickham (2015), CRAN

Package directories
========================================================
A package is a convention for organizing files into directories.

<div style="text-align:center;"><img src="packageDirectory.PNG"; width=1200 height=600 pos=>

Source: Wickham (2015), R-Studio

Necessary packages & tools:
========================================================

```r
install.packages(c("devtools", "roxygen2", "testthat", "knitr"))

# Check:
#install.packages("rstudioapi")
rstudioapi::isAvailable("0.99.149") # TRUE?
```

You’ll also need a C compiler and a few other command line tools. If you’re on Windows or Mac and you don’t already have them, RStudio will install them for you. Otherwise:

- On Windows, download and install Rtools. NB: this is not an R package!
- On Mac, make sure you have either XCode (available for free in the App Store) or the “Command Line Tools for Xcode”. You’ll need to have a (free) Apple ID.
- On Linux, make sure you’ve installed not only R, but also the R development tools. For example, on Ubuntu (and Debian) you need to install the r-base-dev package.


Source: Wickham (2015)


Description
========================================================

- specifies title, author, maintainer, version, ...
- the package information you see on CRAN
- more important if you publish it
- necessary
- also specifies the packages you need and downloads them

Source: Wickham (2015)


Description - other packages you need
========================================================

```r
Imports:
    dplyr (>= 0.4.0),
    ggvis (>= 0.2)
Suggests:
    knitr (>= 0.1.0)
```

- imports are necessary for your package to work
- they are installed together with the package
- suggests are useful, but not necessary
- they are not automatically installed
- good practice to specify a minimal version
- add imports with devtools::use_package("packagename") or manually
- you still have to use library("packagename") in your code

Source: Wickham (2015)


Documentation with roxygen2
========================================================

- with roxygen2, you can put the documentation/help page directly in the code files
- R-Studio > Help > Roxygen Quick Reference

```r
#' Add together two numbers.
#'
#' @param x A number.
#' @param y A number.
#' @return The sum of \code{x} and \code{y}.
#' @examples
#' add(1, 1)
#' @export
```

Source: Wickham (2015)


roxygen2 - important tags
========================================================

- first line is the heading in the help page
- second paragraph is description
- @param x description - Arguments in help file
- @return sentence - Value in help file
- @examples put examples below
- @source data
- @export makes the function available for users (important!)

Source: Wickham (2015)


Exercise
========================================================

- download our second dataset
- write a function with roxygen documentation that uses the dataset


Vignettes
========================================================

- vignettes are for teaching/more detailed documentation
- a markdown file (.rmd) with a YAML header
- example: ggplot2
- make a template file with: devtools::use_vignette("my_vignette")
- we won't go in detail here
- good resource: Markdown cheat sheet https://www.rstudio.com/wp-content/uploads/2015/02/rmarkdown-cheatsheet.pdf

Source: Wickham (2015)


Tests
========================================================

- make sure you code still works after changes
- initialize with devtools::use_testthat()
- put your tests (R-files starting with "test" in the name) in tests/testthat/
- run them all with devtools::test()

Source: Wickham (2015)


Resources
========================================================
- R Packages (Wickham, 2015): https://r-pkgs.had.co.nz
- R-Studio webinars: https://www.rstudio.com/resources/webinars/
- R for Data Science: https://r-4ds.had.co.nz
- R-Studio > Help > Roxygen Quick Reference
- R-Studio > Help > Cheatsheets > Package Development with devtools
- Parker (2014): https://hilaryparker.com/2014/04/29/writing-an-r-package-from-scratch/
- CRAN - Creating R packages: https://cran.r-project.org/doc/manuals/R-exts.html#Creating-R-packages

- Our slides: https://github.com/kklamsi/howToPackage

