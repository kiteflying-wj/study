# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "practice: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ipractice:/home/jkb/practice/src/practice/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(practice_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jkb/practice/src/practice/msg/send.msg" NAME_WE)
add_custom_target(_practice_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "practice" "/home/jkb/practice/src/practice/msg/send.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(practice
  "/home/jkb/practice/src/practice/msg/send.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/practice
)

### Generating Services

### Generating Module File
_generate_module_cpp(practice
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/practice
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(practice_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(practice_generate_messages practice_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jkb/practice/src/practice/msg/send.msg" NAME_WE)
add_dependencies(practice_generate_messages_cpp _practice_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(practice_gencpp)
add_dependencies(practice_gencpp practice_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS practice_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(practice
  "/home/jkb/practice/src/practice/msg/send.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/practice
)

### Generating Services

### Generating Module File
_generate_module_eus(practice
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/practice
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(practice_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(practice_generate_messages practice_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jkb/practice/src/practice/msg/send.msg" NAME_WE)
add_dependencies(practice_generate_messages_eus _practice_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(practice_geneus)
add_dependencies(practice_geneus practice_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS practice_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(practice
  "/home/jkb/practice/src/practice/msg/send.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/practice
)

### Generating Services

### Generating Module File
_generate_module_lisp(practice
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/practice
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(practice_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(practice_generate_messages practice_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jkb/practice/src/practice/msg/send.msg" NAME_WE)
add_dependencies(practice_generate_messages_lisp _practice_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(practice_genlisp)
add_dependencies(practice_genlisp practice_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS practice_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(practice
  "/home/jkb/practice/src/practice/msg/send.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/practice
)

### Generating Services

### Generating Module File
_generate_module_nodejs(practice
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/practice
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(practice_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(practice_generate_messages practice_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jkb/practice/src/practice/msg/send.msg" NAME_WE)
add_dependencies(practice_generate_messages_nodejs _practice_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(practice_gennodejs)
add_dependencies(practice_gennodejs practice_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS practice_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(practice
  "/home/jkb/practice/src/practice/msg/send.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/practice
)

### Generating Services

### Generating Module File
_generate_module_py(practice
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/practice
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(practice_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(practice_generate_messages practice_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jkb/practice/src/practice/msg/send.msg" NAME_WE)
add_dependencies(practice_generate_messages_py _practice_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(practice_genpy)
add_dependencies(practice_genpy practice_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS practice_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/practice)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/practice
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(practice_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/practice)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/practice
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(practice_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/practice)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/practice
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(practice_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/practice)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/practice
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(practice_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/practice)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/practice\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/practice
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(practice_generate_messages_py std_msgs_generate_messages_py)
endif()
