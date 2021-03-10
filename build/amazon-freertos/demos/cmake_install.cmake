# Install script for directory: /home/jernejn/build/freertos_hello_world/amazon-freertos/demos

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/jernejn/build/freertos_hello_world/build/amazon-freertos/demos/ble/gatt_server/cmake_install.cmake")
  include("/home/jernejn/build/freertos_hello_world/build/amazon-freertos/demos/ble/mqtt_ble/cmake_install.cmake")
  include("/home/jernejn/build/freertos_hello_world/build/amazon-freertos/demos/ble/numeric_comparison/cmake_install.cmake")
  include("/home/jernejn/build/freertos_hello_world/build/amazon-freertos/demos/ble/shadow_ble/cmake_install.cmake")
  include("/home/jernejn/build/freertos_hello_world/build/amazon-freertos/demos/cli/cmake_install.cmake")
  include("/home/jernejn/build/freertos_hello_world/build/amazon-freertos/demos/common/http_demo_helpers/cmake_install.cmake")
  include("/home/jernejn/build/freertos_hello_world/build/amazon-freertos/demos/common/mqtt_demo_helpers/cmake_install.cmake")
  include("/home/jernejn/build/freertos_hello_world/build/amazon-freertos/demos/common/pkcs11_helpers/cmake_install.cmake")
  include("/home/jernejn/build/freertos_hello_world/build/amazon-freertos/demos/coreHTTP/cmake_install.cmake")
  include("/home/jernejn/build/freertos_hello_world/build/amazon-freertos/demos/coreMQTT/cmake_install.cmake")
  include("/home/jernejn/build/freertos_hello_world/build/amazon-freertos/demos/dev_mode_key_provisioning/cmake_install.cmake")
  include("/home/jernejn/build/freertos_hello_world/build/amazon-freertos/demos/device_defender_for_aws/cmake_install.cmake")
  include("/home/jernejn/build/freertos_hello_world/build/amazon-freertos/demos/device_shadow_for_aws/cmake_install.cmake")
  include("/home/jernejn/build/freertos_hello_world/build/amazon-freertos/demos/greengrass_connectivity/cmake_install.cmake")
  include("/home/jernejn/build/freertos_hello_world/build/amazon-freertos/demos/jobs_for_aws/cmake_install.cmake")
  include("/home/jernejn/build/freertos_hello_world/build/amazon-freertos/demos/ota/cmake_install.cmake")
  include("/home/jernejn/build/freertos_hello_world/build/amazon-freertos/demos/posix/cmake_install.cmake")
  include("/home/jernejn/build/freertos_hello_world/build/amazon-freertos/demos/tcp/cmake_install.cmake")
  include("/home/jernejn/build/freertos_hello_world/build/amazon-freertos/demos/wifi_provisioning/cmake_install.cmake")

endif()

