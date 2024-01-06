cmake_minimum_required(VERSION 3.0.0)
project(cube VERSION 0.1.0 LANGUAGES C)

include(CTest)
enable_testing()

add_executable(cube cube.c)
if (UNIX)
  target_link_libraries(cube m)
endif (UNIX)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
