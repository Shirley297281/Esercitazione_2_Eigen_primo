# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/shylazzaretti/Desktop/repository/Esercitazione_2_Eigen/Main_Source/eigen3"
  "/Users/shylazzaretti/Desktop/repository/Esercitazione_2_Eigen/Main_Build/eigen3"
  "/Users/shylazzaretti/Desktop/repository/Esercitazione_2_Eigen/Eigen-prefix"
  "/Users/shylazzaretti/Desktop/repository/Esercitazione_2_Eigen/Eigen-prefix/tmp"
  "/Users/shylazzaretti/Desktop/repository/Esercitazione_2_Eigen/Eigen-prefix/src/Eigen-stamp"
  "/Users/shylazzaretti/Desktop/repository/Esercitazione_2_Eigen/Eigen-prefix/src"
  "/Users/shylazzaretti/Desktop/repository/Esercitazione_2_Eigen/Eigen-prefix/src/Eigen-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/shylazzaretti/Desktop/repository/Esercitazione_2_Eigen/Eigen-prefix/src/Eigen-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/shylazzaretti/Desktop/repository/Esercitazione_2_Eigen/Eigen-prefix/src/Eigen-stamp${cfgdir}") # cfgdir has leading slash
endif()
