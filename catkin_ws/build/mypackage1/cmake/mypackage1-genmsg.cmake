# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mypackage1: 3 messages, 1 services")

set(MSG_I_FLAGS "-Imypackage1:/home/jkb/catkin_ws/src/mypackage1/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mypackage1_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jkb/catkin_ws/src/mypackage1/msg/Num.msg" NAME_WE)
add_custom_target(_mypackage1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mypackage1" "/home/jkb/catkin_ws/src/mypackage1/msg/Num.msg" ""
)

get_filename_component(_filename "/home/jkb/catkin_ws/src/mypackage1/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_mypackage1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mypackage1" "/home/jkb/catkin_ws/src/mypackage1/srv/AddTwoInts.srv" ""
)

get_filename_component(_filename "/home/jkb/catkin_ws/src/mypackage1/msg/gps.msg" NAME_WE)
add_custom_target(_mypackage1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mypackage1" "/home/jkb/catkin_ws/src/mypackage1/msg/gps.msg" ""
)

get_filename_component(_filename "/home/jkb/catkin_ws/src/mypackage1/msg/check.msg" NAME_WE)
add_custom_target(_mypackage1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mypackage1" "/home/jkb/catkin_ws/src/mypackage1/msg/check.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mypackage1
  "/home/jkb/catkin_ws/src/mypackage1/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mypackage1
)
_generate_msg_cpp(mypackage1
  "/home/jkb/catkin_ws/src/mypackage1/msg/check.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mypackage1
)
_generate_msg_cpp(mypackage1
  "/home/jkb/catkin_ws/src/mypackage1/msg/gps.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mypackage1
)

### Generating Services
_generate_srv_cpp(mypackage1
  "/home/jkb/catkin_ws/src/mypackage1/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mypackage1
)

### Generating Module File
_generate_module_cpp(mypackage1
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mypackage1
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mypackage1_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mypackage1_generate_messages mypackage1_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jkb/catkin_ws/src/mypackage1/msg/Num.msg" NAME_WE)
add_dependencies(mypackage1_generate_messages_cpp _mypackage1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jkb/catkin_ws/src/mypackage1/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(mypackage1_generate_messages_cpp _mypackage1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jkb/catkin_ws/src/mypackage1/msg/gps.msg" NAME_WE)
add_dependencies(mypackage1_generate_messages_cpp _mypackage1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jkb/catkin_ws/src/mypackage1/msg/check.msg" NAME_WE)
add_dependencies(mypackage1_generate_messages_cpp _mypackage1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mypackage1_gencpp)
add_dependencies(mypackage1_gencpp mypackage1_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mypackage1_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mypackage1
  "/home/jkb/catkin_ws/src/mypackage1/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mypackage1
)
_generate_msg_eus(mypackage1
  "/home/jkb/catkin_ws/src/mypackage1/msg/check.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mypackage1
)
_generate_msg_eus(mypackage1
  "/home/jkb/catkin_ws/src/mypackage1/msg/gps.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mypackage1
)

### Generating Services
_generate_srv_eus(mypackage1
  "/home/jkb/catkin_ws/src/mypackage1/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mypackage1
)

### Generating Module File
_generate_module_eus(mypackage1
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mypackage1
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mypackage1_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mypackage1_generate_messages mypackage1_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jkb/catkin_ws/src/mypackage1/msg/Num.msg" NAME_WE)
add_dependencies(mypackage1_generate_messages_eus _mypackage1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jkb/catkin_ws/src/mypackage1/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(mypackage1_generate_messages_eus _mypackage1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jkb/catkin_ws/src/mypackage1/msg/gps.msg" NAME_WE)
add_dependencies(mypackage1_generate_messages_eus _mypackage1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jkb/catkin_ws/src/mypackage1/msg/check.msg" NAME_WE)
add_dependencies(mypackage1_generate_messages_eus _mypackage1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mypackage1_geneus)
add_dependencies(mypackage1_geneus mypackage1_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mypackage1_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mypackage1
  "/home/jkb/catkin_ws/src/mypackage1/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mypackage1
)
_generate_msg_lisp(mypackage1
  "/home/jkb/catkin_ws/src/mypackage1/msg/check.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mypackage1
)
_generate_msg_lisp(mypackage1
  "/home/jkb/catkin_ws/src/mypackage1/msg/gps.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mypackage1
)

### Generating Services
_generate_srv_lisp(mypackage1
  "/home/jkb/catkin_ws/src/mypackage1/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mypackage1
)

### Generating Module File
_generate_module_lisp(mypackage1
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mypackage1
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mypackage1_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mypackage1_generate_messages mypackage1_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jkb/catkin_ws/src/mypackage1/msg/Num.msg" NAME_WE)
add_dependencies(mypackage1_generate_messages_lisp _mypackage1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jkb/catkin_ws/src/mypackage1/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(mypackage1_generate_messages_lisp _mypackage1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jkb/catkin_ws/src/mypackage1/msg/gps.msg" NAME_WE)
add_dependencies(mypackage1_generate_messages_lisp _mypackage1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jkb/catkin_ws/src/mypackage1/msg/check.msg" NAME_WE)
add_dependencies(mypackage1_generate_messages_lisp _mypackage1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mypackage1_genlisp)
add_dependencies(mypackage1_genlisp mypackage1_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mypackage1_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mypackage1
  "/home/jkb/catkin_ws/src/mypackage1/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mypackage1
)
_generate_msg_nodejs(mypackage1
  "/home/jkb/catkin_ws/src/mypackage1/msg/check.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mypackage1
)
_generate_msg_nodejs(mypackage1
  "/home/jkb/catkin_ws/src/mypackage1/msg/gps.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mypackage1
)

### Generating Services
_generate_srv_nodejs(mypackage1
  "/home/jkb/catkin_ws/src/mypackage1/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mypackage1
)

### Generating Module File
_generate_module_nodejs(mypackage1
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mypackage1
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mypackage1_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mypackage1_generate_messages mypackage1_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jkb/catkin_ws/src/mypackage1/msg/Num.msg" NAME_WE)
add_dependencies(mypackage1_generate_messages_nodejs _mypackage1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jkb/catkin_ws/src/mypackage1/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(mypackage1_generate_messages_nodejs _mypackage1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jkb/catkin_ws/src/mypackage1/msg/gps.msg" NAME_WE)
add_dependencies(mypackage1_generate_messages_nodejs _mypackage1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jkb/catkin_ws/src/mypackage1/msg/check.msg" NAME_WE)
add_dependencies(mypackage1_generate_messages_nodejs _mypackage1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mypackage1_gennodejs)
add_dependencies(mypackage1_gennodejs mypackage1_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mypackage1_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mypackage1
  "/home/jkb/catkin_ws/src/mypackage1/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mypackage1
)
_generate_msg_py(mypackage1
  "/home/jkb/catkin_ws/src/mypackage1/msg/check.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mypackage1
)
_generate_msg_py(mypackage1
  "/home/jkb/catkin_ws/src/mypackage1/msg/gps.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mypackage1
)

### Generating Services
_generate_srv_py(mypackage1
  "/home/jkb/catkin_ws/src/mypackage1/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mypackage1
)

### Generating Module File
_generate_module_py(mypackage1
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mypackage1
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mypackage1_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mypackage1_generate_messages mypackage1_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jkb/catkin_ws/src/mypackage1/msg/Num.msg" NAME_WE)
add_dependencies(mypackage1_generate_messages_py _mypackage1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jkb/catkin_ws/src/mypackage1/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(mypackage1_generate_messages_py _mypackage1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jkb/catkin_ws/src/mypackage1/msg/gps.msg" NAME_WE)
add_dependencies(mypackage1_generate_messages_py _mypackage1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jkb/catkin_ws/src/mypackage1/msg/check.msg" NAME_WE)
add_dependencies(mypackage1_generate_messages_py _mypackage1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mypackage1_genpy)
add_dependencies(mypackage1_genpy mypackage1_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mypackage1_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mypackage1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mypackage1
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mypackage1_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mypackage1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mypackage1
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mypackage1_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mypackage1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mypackage1
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mypackage1_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mypackage1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mypackage1
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mypackage1_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mypackage1)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mypackage1\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mypackage1
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mypackage1_generate_messages_py std_msgs_generate_messages_py)
endif()
