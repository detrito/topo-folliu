#!/bin/bash
# LG, Lausanne, août 2017

extend  --specfile specfile_main.txt ../main.3d coupe_main.3d
extend  --specfile specfile_st_barbe.txt ../main.3d coupe_st_barbe.3d
extend  --specfile specfile_marguerite_bayes.txt ../main.3d coupe_marguerite_bayes.3d
extend  --specfile specfile_cigale.txt ../main.3d coupe_cigale.3d
extend  --specfile specfile_ventilateur.txt ../main.3d coupe_ventilateur.3d
extend  --specfile specfile_ballastiere.txt ../main.3d ballastiere.3d