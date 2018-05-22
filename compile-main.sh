#!/bin/bash

clj -e "(do (set! *compile-path* \"target/classes\") (require 'rp.conjul) (compile 'rp.conjul))"
