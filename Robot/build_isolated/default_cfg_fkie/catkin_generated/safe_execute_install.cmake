execute_process(COMMAND "/home/kalana/Xavier/Robot/build_isolated/default_cfg_fkie/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/kalana/Xavier/Robot/build_isolated/default_cfg_fkie/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
