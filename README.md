# README

This repo contains my solutions to exercises from the legendary textbook
*Structure and Interpretation of Computer Programming*, or from associated
problem sets and projects. It also records as many resources as I could remember
using in my journey.

I am doing solutions with Guile Scheme. In the past (under the folder `./Old/`),
I used heavily-commented Guile files combined with occasional Jupyter notebooks.
Now, I'm using org-mode with Guile code blocks, plus Gnuplot for drawing plots.
I hope to add a Nix file at some point so it's easy for others to load all the
needed dependencies and mess around with my code.

You are welcome to join our [SICP study Discord
server](https://discord.gg/pxZjHtef). We like helping people get unstuck and
feel the sense of accomplishment this book provides, so you're welcome to ask
any question for any part of the book.

The server was organized for people to work through the book in groups, however
the server isn't highly active. So, if there isn't anyone working through the
book at the same time, I encourage you to post your progress as you work. It
feels like shouting into an empty room, but if someone happens to drop in who'd
like to collaborate, your posts will let them know that you're there, and they
can open a dialog about coordinating. If you start working through the book
together, you can ask for a dedicated chatroom and role to organize between
yourselves and send pings to your group specifically.

# What's the scope of the Readme below?
This infodump contains as many resources as I could remember relying upon,
including links to similar infodumps written by other people. It may be helpful
to scan what topics and issues these dumps contain, so if you hit some issue,
you might remember a specific paragraph about that exact issue, rather than
needing to turn to Google for non-SICP-specific advice.

It does not explicitly cover the SICP-descended [UC Berkley course,
CS-61A](https://youtube.com/playlist?list=PLhMnuBfGeCDNgVzLPxF9o5UNKG1b-LFY9),
though you may like it enough to prefer it, or follow both simultaneously as
some decide to do.

# Source material
- [Fully-featured HTML5
  edition](http://sarabander.github.io/sicp/html/index.xhtml)
- [Texinfo edition](http://zv.github.io/sicp-in-texinfo)
- [.info edition](https://github.com/webframp/sicp-info)
- [SICP in PDF format](https://github.com/DiamondBond/sicp-pdf) with some bug
  fixes
- [Offline-hostable mirror of all of the
  above](https://github.com/ProducerMatt/sicp-psets-mirror)
- [SICP vs SICP JS comparison (colorized diffs)](https://sicp.sourceacademy.org/)
- [Structure and Interpretation of Computer Programs
  OpenCourseWare](https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-001-structure-and-interpretation-of-computer-programs-spring-2005/)
  (These lectures are awesome and shouldn't be skipped, but they follow the 1st
  edition of the book and abridge it to fit the semester)
- [The OCW lectures on
  Youtube](https://gist.github.com/shmup/d58053ab657f45ec6656241db60d9d40) and
  which lectures go with what section of the book
- [Holly Yanco SICP lectures on
  Youtube](https://youtube.com/playlist?list=PLhrXA-RW-v-u1L7NuEQgNstePyJJuyoHM),
  which conveniently follow the orignal material closely while answering more grounded questions
  (not everyone is an MIT student :smile:).

## Which Scheme should I use?

Below I compare several options. TLDR:
1. Racket + DrRacket + the SICP package has the best beginner experience and
   debugging interface. But I found some incompatiblities even with the SICP
   package and dropped it. Good for beginners though.
2. Guile Scheme has the best compatibility and it extremely mature, and with
   several powerful extensions to the language which you'll really want in later
   projects.

If you're working in a group, you should submit your homework in any way that
can be easily followed by others, preferably in a way that they won't need to
run your code but can if they want.

You might want to do your homework in an environment that intermixes source code
with rich text and LaTeX for math. Some options:

- Emacs org-mode + org-babel, providing an interactive development environment
  that can be turned into a Latex document
- Jupyter notebooks with the Guile/Racket/Calysto module
- just keeping your source code in one file and your fancy marked-up answers in
  another. I.e. static site generators with Latex support.

To be frank, the last path (the 'K.I.S.S.' principle) may be the ideal path at
the moment. I've spent *many* hours working out the kinks in org-mode +
org-babel and it's still not how I want it.

### Guile

I recommend Guile for its high compatibility with SICP and its high quality and
availability. A Jupyter kernel is available.

A couple helpful and important details regarding Guile Scheme, especially how to
enable read line support:
http://www.starynkevitch.net/Basile/guile-tutorial-1.html

Here's a small [benchmarking
function](https://github.com/ProducerMatt/SICP-solutions/blob/main/mattbench.scm)
and a small [unit
tester](https://github.com/ProducerMatt/SICP-solutions/blob/main/mattcheck2.scm)
that I've found quite helpful.

To run code from SICP, you'll need to change:

- `true` and `false` to `#t` and `#f`
- `nil` to `'()` (*not* to `#nil`). See later note re: `nil`.

### Racket

Racket has the best debugger (DrRacket) but it will only have compatibility for
extremely basic Scheme expressions. It has an SICP compatibility mode, but I
found this wasn't perfect, and it broke some other desirable features. However
don't be afraid to give it a try for yourself.

### Calysto
Another option which I haven't tried is [Calysto
Scheme](https://github.com/Calysto/calysto_scheme), a Scheme interoperable with
Python which is well-integrated for Jupyter notebooks. Compatibility with SICP
not guaranteed.

# Various Resources
- [abrantesasf's study
  guide](https://github.com/abrantesasf/sicp-abrantes-study-guide)
- [Notes for following along in the modern
  day](https://github.com/zv/SICP-guile), and Guile compatibility notes.
  Warning: contains some solutions
- ["cheatsheet" for key ideas](https://www.physinf.com/sicp)
- [SchemeWiki solutions list](http://community.schemewiki.org/?sicp-solutions)
- [Solving SICP](https://lockywolf.wordpress.com/2021/02/08/solving-sicp/)
  statistical analysis of the author's experience doing the textbook.
- [Gwern's SICP notes in Haskell](https://www.gwern.net/sicp/Chapter-1-1)
- [Eli Bendersky's notes in Common Lisp](https://eli.thegreenplace.net/tag/sicp)

Scheme proposals for SICP support libraries (usually not implemented, but hey
it's worth knowing about):
- [SRFI-216](https://srfi.schemers.org/srfi-216/) provides extra support for
  SICP in Scheme. [SRFI-216
  implementations](https://practical-scheme.net/wiliki/schemexref.cgi?SRFI-216)
- [SRFI-203](https://srfi.schemers.org/srfi-203/): extra support for the
  graphics drawings segments of the book.

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

## Forcing floating points and rationals in Guile

Have you encountered little bugs from procedures mixing integers and floats? One
solution for this problem is making your constructors force a type when they're
created. You can force integers to floating point with this:

```scheme
(define (float x)
  (if (inexact? x)
      x
      (exact->inexact x)))
```

And you can force floats to rational numbers with this:

```scheme
(define (rat x)
  (define dx 1/100000)
  (if (exact? x)
      x
      (rationalize
       (inexact->exact x)
       dx)))

```

## Visualizing Lists in Scheme
In the browser: [Lisp code syntax
visualizer](https://bagnalla.github.io/sexp-trees/)

On Linux: install graphviz and add [this
function](https://github.com/zv/SICP-guile#script) to your file. Call it with
`(display (list->grapviz YourList))`. Then feed that output to `dot` like so:

```bash
guile box_ptr.scm | dot -o /dev/stdout -Tpng > box_pointer_diagram.png
```

## Using Racket for SICP

```
raco pkg install sicp
```

[This pkg](https://docs.racket-lang.org/sicp-manual/SICP_Language.html) gives
you a compatible language set when loaded. Load in the REPL with `racket -I
sicp`, or in files by putting `#lang sicp` at the top of your file. When using
`sicp`, load modules with `#%require` instead of `require`.

# Requirements for org-babel + guile

NOTE: I've worked a lot on this and it's still not how I really want it. If you
can find a better path, you should go with that.

Be sure to install Guile, and Texlive.

For graphing, install `gnuplot` and `graphviz`.

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

# SICP's Picture Language with `guile-picture-language`

> [!INFO]
>
> We at the Discord server (primarily [waxcatape](https://github.com/waxcatape))
> have put the following info together into a Guile file which provides the
> book's expected functions automatically, and includes reference functions to
> compare your answers against without confusion of using the same names.
> 
> Check it out here:
> [https://github.com/waxcatape/guile-sicp-piclang](https://github.com/waxcatape/guile-sicp-piclang)
> 
> Below are my original instructions for the section, without the script.

First, you'll need `guile-picture-language` and a Guile install that knows where
to find it. The easiest way is by installing Guix and executing `guix shell
guile-picture-language guile`. This will make the Guile module `pict` available
in your shell. Try running the following code:

``` scheme
(use-modules (pict))
(pict->file (triangle 50 70)
           "triangle.svg")
```

You should see a picture like this: ![triangle test](2/pict/test.png) If you
need the `svg`s in png format, I can recommend ImageMagick.

Now for the tricky part. The code in the textbooks expects drawing primitives to
exist in your system (this would have been common in the 80s and 90s school
mainframes). We do not have these, so we will have to put the drawing procedures
of `pict` together so that the book's code can work with them. During this
process you may encounter integer/float issues, which [this tip may help
with](#forcing-floating-points-and-rationals-in-guile).

When you start the picture language exercises at 2.44 *you won't have enough
procedures to actually bring it all together*, so you'll *have to do the first
couple exercises without running them* -- luckily they are very similar (or
identical) to some previous exercises, such as the implementation of line
segments in 2.2 and rectangles in 2.3. Once you have defined them up to 2.49,
you can make procedures for `pict` that will create SICP's pictures. Here is
such a system, which modifies some textbook code. It expects:

- [ ] a vector implementation (Exercise 2.46)
  - [ ] `(make-vect x y)` construct a vector
  - [ ] `(xcor-vect v)` return the x coordinate
  - [ ] `(ycor-vect v)` return the y coordinate
  - [ ] `(add-vect v w)` add vectors
  - [ ] `(sub-vect v w)` subtract vectors
  - [ ] `(scale-vect s v)` scale vector `v` by factor `s` (don't get these
        backwards :smile: )
- [ ] An implementation of frames (Exercise 2.47)
  - [ ] `(make-frame origin edge1 edge2)` construct a frame object
  - [ ] `(origin-frame F)` return the origin
  - [ ] `(edge1-frame F)` return the first edge
  - [ ] `(edge2-frame F)` return the second edge
- [ ] An implementation of line segments
  - [ ] `(make-segment start end)` construct a segment from two vectors
  - [ ] `(start-segment S)` return the starting vector
  - [ ] `(end-segment S)` return the ending vector

``` scheme
(use-modules (pict))

;; \/\/\/
;; Here is the place for your frame, segment, and vector code
;; /\/\/\
(define (frame-coord-map frame)
  ;; Returns a function for adjusting a frame by a vector
  (lambda (v)
    (add-vect
     (origin-frame frame)
     (add-vect 
      (scale-vect (xcor-vect v)
                  (edge1-frame frame))
      (scale-vect (ycor-vect v)
                  (edge2-frame frame))))))

(define (draw-line start end)
  ;; take two vectors, returns a line SVG object for pict
  (line (xcor-vect start)
        (ycor-vect start)
        (xcor-vect end)
        (ycor-vect end)))

(define (segments->painter segment-list)
  ;; takes a list of segments, returns a "painter" lambda, which applies a frame
  ;; to those segments, and then maps over the result with draw-line to make a
  ;; list of SVG line objects which pict can combine.
  (lambda (frame)
    (map
     (lambda (segment)
       (draw-line
        ((frame-coord-map frame)
         (start-segment segment))
        ((frame-coord-map frame)
         (end-segment segment))))
     segment-list)))

;; NOTE: in the text, draw-line is a function which triggers an action in
;; some graphics driver, and returns nothing. Because of this, (map) was
;; originally (for-each). Thus the final result would have been thrown away.

(define (paint-lines painter)
  ;; use pict to compile an SVG with the elements described by painter
  (let ((Frame (make-frame (make-vect 0 0)
                           (make-vect 500 0)
                           (make-vect 0 500))))
    (apply lt-superimpose
           (painter Frame))))
```

A complete version of this with my own answers can be found under
[../2/pict/linepainter.scheme](2/pict/linepainter.scheme). A similar file with
no spoilers can be found under
[../2/pict/linepainter_nospoilers.scheme](2/pict/linepainter_nospoilers.scheme)

Try testing it with the diamond painter:

``` scheme
(pict->file (paint-lines diamond)
            "2/pict/testline.svg")
```

![Test output](2/pict/testline.png)
