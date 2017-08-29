(setq pb/current-project "math3405")
(setq pb/org-src-path  (concat "~/working/academic/teaching/uq/2017/" pb/current-project))
(setq pb/org-publish-path (concat "~/publish/academic/teaching/uq/2017/" pb/current-project))

(setq org-publish-project-alist (pb/create-org-publish-beamer-alist pb/current-project pb/org-src-path pb/org-publish-path))
