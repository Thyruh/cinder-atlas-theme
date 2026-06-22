;;; cinder-atlas-theme.el --- Cinder Atlas theme -*- lexical-binding: t; -*-

(deftheme cinder-atlas "Cinder Atlas color theme")

(let ((background "#0e070d")
      (text       "#d1b897")
      (selection  "#0000ff")

      (comments   "#62788F")
      (punctuation "#808080")

      (keywords   "#ffffff")
      (variables  "#c1d1e3")
      (functions  "#ffffff")
      (methods    "#c1d1e3")
      (strings    "#73c936")
      (constants  "#808080")
      (macros     "#8cde94")

      (builtin    "#ffffff")

      (white      "#ffffff")

      (error      "#ff0000")
      (warning    "#ffaa00")

      (highlight-line "#0b3335"))

  (custom-theme-set-faces
   'cinder-atlas

   ;; Core UI
   `(default ((t (:foreground ,text :background ,background))))
   `(cursor  ((t (:background ,white))))
   `(region  ((t (:background ,selection))))
   `(fringe  ((t (:background ,background :foreground ,white))))
   `(highlight ((t (:background ,selection))))

   ;; font-lock
   `(font-lock-keyword-face           ((t (:foreground ,keywords))))
   `(font-lock-type-face              ((t (:foreground ,punctuation))))
   `(font-lock-constant-face          ((t (:foreground ,constants))))
   `(font-lock-variable-name-face     ((t (:foreground ,variables))))
   `(font-lock-builtin-face           ((t (:foreground ,builtin))))
   `(font-lock-string-face            ((t (:foreground ,strings))))
   `(font-lock-comment-face           ((t (:foreground ,comments))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,comments))))
   `(font-lock-doc-face               ((t (:foreground ,comments))))
   `(font-lock-function-name-face     ((t (:foreground ,functions))))
   `(font-lock-preprocessor-face      ((t (:foreground ,macros))))
   `(font-lock-warning-face           ((t (:foreground ,warning))))

   ;; line
   `(hl-line ((t (:background ,highlight-line))))
   `(line-number ((t (:foreground ,comments :background ,background))))
   `(line-number-current-line ((t (:foreground ,white :background ,background))))

   ;; whitespace
   `(trailing-whitespace ((t (:background ,warning))))
   `(whitespace-trailing ((t (:background ,warning))))

   ;; compilation
   `(compilation-info    ((t (:foreground ,macros))))
   `(compilation-warning ((t (:foreground ,warning :weight bold))))
   `(compilation-error   ((t (:foreground ,error :weight bold))))

   ;; mode-line
   `(mode-line ((t (:background ,text :foreground ,background :box t))))
   `(mode-line-inactive ((t (:background ,background :foreground ,text))))

   ;; tab-bar
   `(tab-bar ((t (:background ,background))))
   `(tab-bar-tab ((t (:background ,text :foreground ,background))))
   `(tab-bar-tab-inactive ((t (:background ,background :foreground ,text))))

   ;; misc
   `(error ((t (:foreground ,error))))
   `(which-func ((t (:weight bold))))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-directory load-file-name)))

(provide-theme 'cinder-atlas)
(provide 'cinder-atlas-theme)

;;; cinder-atlas-theme.el ends here
