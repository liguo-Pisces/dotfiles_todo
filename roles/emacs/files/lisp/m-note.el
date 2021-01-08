(setq org-html-head-include-default-style nil
     org-html-head "")

(require 'ox-publish)
(setq org-publish-project-alist
      '(("blog-pages"
         :base-directory "~/.blog/org/"
         :base-extension "org"
         :html-extension "html"
         :publishing-directory "~/.blog/html/"
         :publishing-function (org-html-publish-to-html)
         :auto-sitemap nil
         :section-numbers nil
         :table-of-contents t
         :html-head "<link rel=\"stylesheet\" href=\"css/worg.css\" type=\"text/css\" />"
         :recursive t)
        ("blog-static"
         :base-directory "~/.blog/org/"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
         :publishing-directory "~/.blog/html/"
         :publishing-function org-publish-attachment
         :recursive t)
        ("blog" :components ("blog-pages" "blog-static"))
        ))

(provide 'm-note)
