cmake_minimum_required(VERSION 3.20)
project(template)

find_package(OpenGL REQUIRED)

set(CMAKE_CXX_STANDARD 20)

set(GLFW_PATH vendor/glfw)
set(GLAD_PATH vendor/glad)

add_executable(${PROJECT_NAME} main.cpp)

add_subdirectory(${GLFW_PATH})

target_include_directories(${PROJECT_NAME}
    PUBLIC ${GLFW_PATH}/include
    PUBLIC ${GLAD_PATH}/include
)

target_link_directories(${PROJECT_NAME}
    PUBLIC ${GLFW_PATH}/src
)

target_link_libraries(${PROJECT_NAME} glfw OpenGL::GL)