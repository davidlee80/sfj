#ifndef BLACK_LABEL_RENDERER_FILE_LOADING_HPP
#define BLACK_LABEL_RENDERER_FILE_LOADING_HPP

#include <black_label/shared_library/utility.hpp>
#include <black_label/renderer/cpu/model.hpp>
#include <black_label/renderer/gpu/model.hpp>

#define BOOST_FILESYSTEM_NO_DEPRECATED
#include <boost/filesystem/convenience.hpp>

#ifndef MSVC
#define NO_FBX
#endif



namespace black_label {
namespace renderer {

#ifdef DEVELOPER_TOOLS

#ifndef NO_FBX
BLACK_LABEL_SHARED_LIBRARY bool load_fbx( 
	const boost::filesystem::path& path, 
	cpu::model& cpu_model );
#endif
    
BLACK_LABEL_SHARED_LIBRARY bool load_assimp( 
	const boost::filesystem::path& path, cpu::model& cpu_model );

#endif // #ifdef DEVELOPER_TOOLS

BLACK_LABEL_SHARED_LIBRARY bool load_blm( 
	const boost::filesystem::path& path, cpu::model& cpu_model );



////////////////////////////////////////////////////////////////////////////////
/// Unfortunately, Assimp reads files from memory differently than from a file
/// path.
/// 
/// Maybe the following can be used in the future:
/// http://assimp.sourceforge.net/lib_html/class_assimp_1_1_i_o_system.html
////////////////////////////////////////////////////////////////////////////////
// BLACK_LABEL_SHARED_LIBRARY bool load_assimp( 
// 	const void* data,
// 	size_t size, 
// 	cpu::model& cpu_model, 
// 	gpu::model& gpu_model );

} // namespace renderer
} // namespace black_label



#endif // #ifndef BLACK_LABEL_RENDERER_STORAGE_FILE_LOADING_HPP
