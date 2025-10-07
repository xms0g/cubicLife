#version 410 core

layout (location = 0) in vec3 pos;
layout (location = 1) in vec3 norm;
layout (location = 2) in vec2 texcoord;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

out vec3 vNorm;
out vec2 vTexcoord;

void main() {
    vNorm = norm;
    vTexcoord = texcoord;
    gl_Position = projection * view  * model * vec4(pos, 1.0);
}