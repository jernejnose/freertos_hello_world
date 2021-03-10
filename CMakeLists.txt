cmake_minimum_required(VERSION 3.5)

project(freertos-hello-world)

add_executable(freertos-hello-world main/main.c)

# Tell IDF build to link against this target.
set(IDF_PROJECT_EXECUTABLE freertos-hello-world)

# Set board
set(AFR_BOARD espressif.esp32_devkitc CACHE INTERNAL "")

# add freertos
add_subdirectory(amazon-freertos)

# Add amazon-freertos libs
#target_link_libraries(reertos-hello-world PRIVATE AFR::shadow)