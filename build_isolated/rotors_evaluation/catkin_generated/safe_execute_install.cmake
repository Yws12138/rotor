execute_process(COMMAND "/home/yws/UMV_Project/rotor/build_isolated/rotors_evaluation/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/yws/UMV_Project/rotor/build_isolated/rotors_evaluation/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
