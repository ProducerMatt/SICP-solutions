# README

This repo contains my solutions to exercises from the legendary textbook
*Structure and Interpretation of Computer Programming*, or from associated
problem sets and projects.

I am doing solutions with Guile Scheme. In the past, I used heavily-commented
Guile files combined with occasional Jupyter notebooks. Now, I'm using org-mode
with Guile code blocks, plus Gnuplot for drawing plots. I hope to add a Nix file
at some point so it's easy for others to load all the needed dependencies and
mess around with my code.

This infodump does not cover the SICP-descended Harvard courses.

# Source material
- [Fully-featured HTML edition](http://sarabander.github.io/sicp/html/index.xhtml)
- [Texinfo edition](http://zv.github.io/sicp-in-texinfo)
- [.info edition](https://github.com/webframp/sicp-info)
- [SICP in PDF format](https://github.com/DiamondBond/sicp-pdf) with some bug fixes
- [Structure and Interpretation of Computer Programs OpenCourseWare](https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-001-structure-and-interpretation-of-computer-programs-spring-2005/)
- [Self-hostable mirror of all of the above](https://github.com/ProducerMatt/sicp-psets-mirror)
- [SICP lectures on Youtube](https://gist.github.com/shmup/d58053ab657f45ec6656241db60d9d40) and which lectures go with what section of the book
- [Holly Yanco SICP lectures on Youtube](https://youtube.com/playlist?list=PLhrXA-RW-v-u1L7NuEQgNstePyJJuyoHM)
- [SICP vs SICP JS comparison](https://sicp.sourceacademy.org/)

## Which Scheme should I use?

You can submit your homework in any way that can be easily followed by others, preferably in a way that they won't need to run your code but can if they want.

You may want to do your homework in an environment that intermixes source code with rich text and LaTeX for math. Some options:

- Emacs org-mode + org-babel, providing an interactive development environment that can be turned into a Latex document
- Jupyter notebooks with the Guile/Racket/Calysto module
- just keeping your source code in one file and your fancy marked-up answers in another. I.e. static site generators with Latex support.

The last may be the ideal path at the moment, I've spent many hours working out the kinks in org-mode + org-babel and it's still not how I want it.

### Guile

I recommend Guile for its high compatibility with SICP and its high quality and availability. A Jupyter kernel is available.

A couple helpful and important details regarding Guile Scheme, especially how to enable read line support: http://www.starynkevitch.net/Basile/guile-tutorial-1.html

Here's a small [benchmarking function](https://github.com/ProducerMatt/SICP-solutions/blob/main/mattbench.scm) and a small [unit tester](https://github.com/ProducerMatt/SICP-solutions/blob/main/mattcheck2.scm) that I've found quite helpful.

To run code from SICP, you'll need to change:

- `true` and `false` to `#t` and `#f`
- `nil` to `'()` (*not* to `#nil`). See later note re: `nil`.

### Racket

Racket has the best debugger (DrRacket) but it will only have compatibility for extremely basic Scheme expressions. It has an SICP compatibility mode, but I found this broke some other desirable features. However don't be afraid to give it a try for yourself.

### Calysto
Another option which I haven't tried is [Calysto Scheme](https://github.com/Calysto/calysto_scheme), a Scheme interoperable with Python which is well-integrated for Jupyter notebooks. Compatibility with SICP not guaranteed.

# Various Resources
- [abrantesasf's study guide](https://github.com/abrantesasf/sicp-abrantes-study-guide)
- [Notes for following along in the modern day](https://github.com/zv/SICP-guile), and Guile compatibility notes. Warning: contains some solutions
- ["cheatsheet" for key ideas](https://www.physinf.com/sicp)
- [SchemeWiki solutions list](http://community.schemewiki.org/?sicp-solutions)
- [Solving SICP](https://lockywolf.wordpress.com/2021/02/08/solving-sicp/) statistical analysis of the author's experience doing the textbook.
- [Gwern's SICP notes in Haskell](https://www.gwern.net/sicp/Chapter-1-1)
- [Eli Bendersky's notes in Common Lisp](https://eli.thegreenplace.net/tag/sicp)

Scheme proposals for SICP support libraries (usually not implemented, but hey it's worth knowing about):
- [SRFI-216](https://srfi.schemers.org/srfi-216/) provides extra support for SICP in Scheme. [SRFI-216 implementations](https://practical-scheme.net/wiliki/schemexref.cgi?SRFI-216)
- [SRFI-203](https://srfi.schemers.org/srfi-203/): extra support for the graphics drawings segments of the book.

# Tidbits about Scheme

## Equality
Short answer: you probably want to use `equal?`

Thanks to [SA](https://stackoverflow.com/a/17719745)
```scheme
; NUMERIC EQUALITY with =
(= 2 3)     ;=> #f
(= 2.5 2.5) ;=> #t
(= '() '()) ;=> error

; POINTER EQUALITY with eq?
(define x '(2 3))
(define y '(2 3))
(eq? x y)         ;=> #f
(define y x)
(eq? x y)         ;=> #t

(define x '())
(define y '())
(eq? x y)      ;=> #t

; eq? inconsistent on primatives
(eq? 2 2)     ;=> depends upon the implementation
(eq? "a" "a") ;=> depends upon the implementation

; eqv? is a superset of eq? that's more consistent on primatives
(eqv? 2 2)     ;=> #t
(eqv? "a" "a") ;=> depends upon the implementation
```

## Numeric/atomic/list/structure equality with `equal?`
```scheme
(define x '(2 3))
(define y '(2 3))
(equal? x y)     ; => #t
(eqv? x y)       ; => #f
```

## Nil's meaning in Guile
```scheme
(equal? '() #nil) ;; ==> False!!!
(let ((parens-list (cons 1 (cons 2 (cons 3 '()))))
	  (nil-list (cons 1 (cons 2 (cons 3 #nil)))))
  (display parens-list)(display " <== ends with '()")
;; (1 2 3) <== ends with '()
  (newline)
  (display nil-list)(display " <== ends with #nil")
;; (1 2 3) <== ends with #nil
  (newline)
  (display "Are these two lists equal? > ")
  (display (equal? parens-list nil-list))
;; Are these two lists equal? > #f
  (newline)
  (display "Does Guile consider #nil and '() equal? > ")
  (display (equal? #nil '()))
;; Does Guile consider #nil and '() equal? > #f
  (newline)
  (display "What about #nil and #f? > ")
  (display (equal? #nil #f)))
;; What about #nil and #f? > #f
```

## Visualizing Lists in Scheme
In the browser: [Lisp code syntax visualizer](https://bagnalla.github.io/sexp-trees/) 

On Linux: install graphviz and add [this function](https://github.com/zv/SICP-guile#script) to your file. Call it with `(display (list->grapviz YourList))`. Then feed that output to `dot` like so:

```bash
guile box_ptr.scm | dot -o /dev/stdout -Tpng > box_pointer_diagram.png
```

## Using Racket for SICP

```
raco pkg install sicp
```

[This pkg](https://docs.racket-lang.org/sicp-manual/SICP_Language.html) gives you a compatible language set when loaded. Load in the REPL with `racket -I sicp`, or in files by putting `#lang sicp` at the top of your file. When using `sicp`, load modules with `#%require` instead of `require`.

# Requirements for org-babel + guile

Be sure to install Guile, and Texlive.

For graphing, install `gnuplot` and `graphviz`.

For the picture language section, install `guile-picture-language` package via Guix.

## Doom-Emacs minimum dependencies

`init.el`
```elisp
(doom! [......]
       :ui
       ligatures
       unicode

       :tools
       (eval +overlay)
       lsp
       pdf

       :lang
       emacs-lisp
       latex
       (org +dragndrop +hugo +gnuplot +jupyter +pandoc +pretty)
                         ; the one that really matters
       (scheme +guile)
       [.......]
```

`config.el`

```elisp
;; workaround for some errors
(after! geiser-guile
  (setq geiser-guile-binary "guile"))
(defalias 'run-geiser 'geiser)

;; latex export
;; this is the real arcane stuff, tread carefully
(after! ox-latex
  (setq org-latex-listings 'minted)
  (setq org-latex-src-block-backend 'minted)
  (setq org-export-latex-listings 'minted)
  (when (boundp 'org-export-latex-packages-alist)
    (add-to-list 'org-export-latex-packages-alist '("" "minted")))
  (when (boundp 'org-latex-minted-langs)
    (add-to-list 'org-latex-minted-langs '(ipython "python"))
    (add-to-list 'org-latex-minted-langs '(scheme "scheme")))
  (setq org-latex-minted-options '(("breaklines" "true")
                                   ("breakanywhere" "true")
                                   ("linenos" "true")))
  (when (boundp 'org-latex-pdf-process)
    (setq org-latex-pdf-process
          '("latexmk -f -pdf -%latex -shell-escape -interaction=nonstopmode -output-directory=%o %f")))
  )

;; parse .scm and .scheme the same
(add-to-list 'auto-mode-alist '("\\.\\(scm\\|stk\\|ss\\|sch\\|scheme\\)\\'" . scheme-mode))

;; OPTIONAL: per-section modification times recorded in org-mode
(after! org
  (defun yant/getentryhash ()
    "Get the hash sum of the text in current entry, except :HASH: and :MODIFIED: property texts."
    (save-excursion
      (let* ((beg (progn (org-back-to-heading) (point)))
             (end (progn
                    (forward-char)
                    (if (not (re-search-forward "^\*+ " (point-max) t))
                        (point-max)
                      (match-beginning 0))))
             (full-str (buffer-substring beg end))
             (str-nohash (if (string-match "^ *:HASH:.+\n" full-str)
                             (replace-match "" nil nil full-str)
                           full-str))
             (str-nohash-nomod (if (string-match "^ *:MODIFIED:.+\n" str-nohash)
                                   (replace-match "" nil nil str-nohash)
                                 str-nohash))
             (str-nohash-nomod-nopropbeg (if (string-match "^ *:PROPERTIES:\n" str-nohash-nomod)
                                             (replace-match "" nil nil str-nohash-nomod)
                                           str-nohash-nomod))
             (str-nohash-nomod-nopropbeg-end (if (string-match "^ *:END:\n" str-nohash-nomod-nopropbeg)
                                                 (replace-match "" nil nil str-nohash-nomod-nopropbeg)
                                               str-nohash-nomod-nopropbeg)))
        (sxhash str-nohash-nomod-nopropbeg-end))))

  (defun yant/update-modification-time ()
    "Set the :MODIFIED: property of the current entry to NOW and update :HASH: property."
    (org-set-property "HASH" (format "%s" (yant/getentryhash)))
    (org-set-property "MODIFIED" (format-time-string "%Y-%m-%d %H:%M")))
  (defun yant/skip-nonmodified ()
    "Skip org entries, which were not modified according to the :HASH: property"
    (let ((next-headline (save-excursion (or (outline-next-heading) (point-max)))))
      (if (string= (org-entry-get (point) "HASH" nil) (format "%s" (yant/getentryhash)))
          next-headline
        nil)))

  (add-hook 'before-save-hook (lambda ()
                                (when (eq major-mode 'org-mode)
                                  (if org-update-heading-mod-times
                                      (org-map-entries #'yant/update-modification-time nil 'file #'yant/skip-nonmodified)))))

  (add-hook 'org-mode-hook 'org-auto-tangle-mode))
```

`packages.el`:

``` elisp
(package! org-auto-tangle)
(package! ob-mermaid)
```

## org doc support

The most important part are the org-mode properties set at the top of the document.
``` org
# Enable TOC at top of document
#+OPTIONS: toc:t stat:t prop:t num:20

# Don't export sections tagged "noexport"
#+EXCLUDE_TAGS: noexport

# Open document folded
#+STARTUP: overview

# for org agenda, tag items with whether they are math-heavy or optional
#+TAGS: math optional

# Tangle when saving
#+auto_tangle: t

# ORG-BABEL DEFAULTS
#+PROPERTY: header-args :tangle no :noeval :exports both :cache yes :results output wrap :noweb no-export :comments noweb :colnames no :rownames no
#+PROPERTY: header-args:scheme :wrap EXAMPLE
#+PROPERTY: header-args:gnuplot :prelude "reset" :session nil
#+PROPERTY: header-args:mermaid :exports results

# For the actual answers use a header like this:
# #+BEGIN_SRC scheme -n :eval no-export :exports both
# For their dependencies:
# #+BEGIN_SRC scheme -n :eval no-export :results silent

#+latex_class: article
#+latex_class_options: [final,fleqn,titlepage,twoside,twocolumn]
#+latex_engraved_theme:

#+LATEX_COMPILER: xelatex
#+LATEX_HEADER: \usepackage{fontspec}
#+LATEX_HEADER: \usepackage{calligra}
#+LATEX_HEADER: \usepackage{lmodern}
#+LATEX_HEADER: \usepackage[T1]{fontenc}
#+LATEX_HEADER: \setmonofont[Mapping=tex-text,Ligatures=TeX,Scale=MatchLowercase]{FiraMono-Regular}

# SOURCE CODE HIGHLIGHTING
#+LATEX_HEADER: \usepackage[cache=true]{minted}
#+LATEX_HEADER: \usemintedstyle{colorful}
#+LATEX_HEADER: \setminted{fontsize=\small}
# FIXME: keep minted inline code from being automatically wrapped
#+LATEX_HEADER: \setmintedinline{breakbytoken=false,breakbytokenanywhere=false,breaklines=false,breakaftergroup=false}

# SOURCE CODE FRAMES
#+LATEX_HEADER: \usepackage{mdframed}
#+LATEX_HEADER: \definecolor{my-bg}{rgb}{0.99,0.99,0.99}
#+LATEX_HEADER: \definecolor{gray}{rgb}{0.60,0.60,0.60}

#+LATEX_HEADER: \mdfdefinestyle{theoremstyle}{%
#+LATEX_HEADER: linecolor=gray,linewidth=.5pt,%
#+LATEX_HEADER: backgroundcolor=my-bg
#+LATEX_HEADER: }

#+LATEX_HEADER: \usepackage{etoolbox}
#+LATEX_HEADER: \BeforeBeginEnvironment{minted}{\begin{mdframed}[style=theoremstyle]}
#+LATEX_HEADER: \AfterEndEnvironment{minted}{\end{mdframed}}

# listfiles leaves a list of all files used during processing in the log
# in-Emacs renders log to a buffer, not a file
#+LATEX_HEADER: \listfiles

#+title: Your Doc Title
#+subtitle: Your Subtitle
#+AUTHOR: Your Name
#+date: \today

# Image too big? Scale it down by adding this attribute:
# #+ATTR_LATEX: :width 0.6\linewidth
```

