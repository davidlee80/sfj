include(FindPackageHandleStandardArgs)



#find_path(BULLET_WORLD_IMPORTER_INCLUDE_DIR "Extras/Serialize/BulletWorldImporter")
#find_path(BULLET_FILE_LOADER_INCLUDE_DIR "Extras/Serialize/BulletFileLoader")

find_library(BULLET_WORLD_IMPORTER_LIBRARY "BulletWorldImporter")
find_library(BULLET_WORLD_IMPORTER_LIBRARY_DEBUG "BulletWorldImporter")
find_library(BULLET_FILE_LOADER_LIBRARY "BulletFileLoader")
find_library(BULLET_FILE_LOADER_LIBRARY_DEBUG "BulletFileLoader")



find_package_handle_standard_args(
	BULLET_EXTRAS
	REQUIRED_VARS BULLET_WORLD_IMPORTER_LIBRARY BULLET_WORLD_IMPORTER_LIBRARY_DEBUG BULLET_FILE_LOADER_LIBRARY BULLET_FILE_LOADER_LIBRARY_DEBUG)
	
	
	
if(BULLET_FOUND)
	#list(APPEND BULLET_INCLUDE_DIRS
		#${BULLET_WORLD_IMPORTER_INCLUDE_DIR} ${BULLET_FILE_LOADER_INCLUDE_DIR})
	
	list(APPEND BULLET_LIBRARIES 
		"optimized" ${BULLET_WORLD_IMPORTER_LIBRARY}
		"debug" ${BULLET_WORLD_IMPORTER_LIBRARY_DEBUG}
		"optimized" ${BULLET_FILE_LOADER_LIBRARY}
		"debug" ${BULLET_FILE_LOADER_LIBRARY_DEBUG}
		)
endif()
