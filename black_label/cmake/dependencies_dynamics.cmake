# BULLET
find_package(BULLET REQUIRED)
find_package(BULLETEXTRAS REQUIRED)
list(APPEND BlackLabel_DEPENDENCIES_DYNAMICS_INCLUDE_DIRS ${BULLET_INCLUDE_DIRS})
list(APPEND BlackLabel_DEPENDENCIES_DYNAMICS_LIBRARIES ${BULLET_LIBRARIES})
