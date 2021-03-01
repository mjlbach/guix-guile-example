(use-modules (guix)
             (guix build-system cmake)
             (guix licenses)
             (guix git-download)
             (gnu packages guile)
             (gnu packages cmake)
             (gnu packages pkg-config))


(package
  (name "example-guix-guile-package")
  (version "0.0.1")
  (source (local-file "." "guix-guile-example"
                    #:select? (git-predicate
                               (dirname (assoc-ref
                                         (current-source-location)
                                         'filename)))
                    #:recursive? #t))
  (native-inputs
   `(("pkg-config" ,pkg-config)
     ("cmake" ,cmake)))
  (inputs
   `(("guile-3.0" ,guile-3.0)))
  (build-system cmake-build-system)
  (arguments
     '(#:phases (modify-phases %standard-phases
                  (delete 'check))))
  (synopsis "Packaging with guix is hard.")
  (description "This is a mixed guile and C package using CMake")
  (home-page "http://github.com/mjlbach/example-guix-package")
  (license gpl3+))
