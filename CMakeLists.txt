cmake_minimum_required(VERSION 3.20)
project(template)

set(CMAKE_CXX_STANDARD 20)

set(GLFW_PATH vendor/glfw)
set(GLEW_PATH vendor/glew)

add_executable(${PROJECT_NAME} main.cpp)

add_subdirectory(${GLFW_PATH})
add_subdirectory(${GLEW_PATH})

target_include_directories(${PROJECT_NAME}
    PUBLIC ${GLFW_PATH}/include
    PUBLIC ${GLEW_PATH}/include
)

target_link_directories(${PROJECT_NAME}
    PUBLIC ${GLFW_PATH}/src
    PUBLIC ${GLEW_PATH}/lib
)

target_link_libraries(${PROJECT_NAME} glfw libglew_static)