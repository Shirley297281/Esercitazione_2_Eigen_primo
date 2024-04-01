# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/shylazzaretti/Desktop/repository/Esercitazione_2_Eigen/Main_Source/googletest"
  "/Users/shylazzaretti/Desktop/repository/Esercitazione_2_Eigen/Main_Build/googletest"
  "/Users/shylazzaretti/Desktop/repository/Esercitazione_2_Eigen/googletest-prefix"
  "/Users/shylazzaretti/Desktop/repository/Esercitazione_2_Eigen/googletest-prefix/tmp"
  "/Users/shylazzaretti/Desktop/repository/Esercitazione_2_Eigen/googletest-prefix/src/googletest-stamp"
  "/Users/shylazzaretti/Desktop/repository/Esercitazione_2_Eigen/googletest-prefix/src"
  "/Users/shylazzaretti/Desktop/repository/Esercitazione_2_Eigen/googletest-prefix/src/googletest-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/shylazzaretti/Desktop/repository/Esercitazione_2_Eigen/googletest-prefix/src/googletest-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/shylazzaretti/Desktop/repository/Esercitazione_2_Eigen/googletest-prefix/src/googletest-stamp${cfgdir}") # cfgdir has leading slash
endif()
