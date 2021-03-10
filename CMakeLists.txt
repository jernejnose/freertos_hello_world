
cmake_minimum_required(VERSION 3.13)

project(freertos_hello_world)

add_executable(freertos_hello_world main/main.c)

# Tell IDF build to link against this target.
set(IDF_PROJECT_EXECUTABLE freertos_hello_world)

# Add some extra components. IDF_EXTRA_COMPONENT_DIRS is an variable used by ESP-IDF
# to collect extra components.

list(APPEND IDF_EXTRA_COMPONENT_DIRS ${EXTRA_COMPONENT_DIRS})

# As of now there's no offical way to redefine config files outside of Amazon FreeRTOS source tree.
# This is a temporary approach to inject an include path so that this takes precedence over the
# config file directory inside Amazon FreeRTOS.
#include_directories(BEFORE config)

# Add amazon freertos as an subdirectory. AFR_BOARD tells which board to target.
set(AFR_BOARD espressif.esp32_devkitc CACHE INTERNAL "")
add_subdirectory(amazon-freertos)

# Link against the mqtt lib so that we can use it.
target_link_libraries(
    freertos_hello_world
    PRIVATE
    AFR::common_io
    AFR::demo_core_mqtt
)
