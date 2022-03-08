#include <scop.hpp>

int main() {
    GLFWwindow* window;
    if (!glfwInit())
        exit(EXIT_FAILURE);
    window = glfwCreateWindow(1024, 720, "test", NULL, NULL);
    while (!glfwWindowShouldClose(window)){
        glfwPollEvents();
    }
    glfwDestroyWindow(window);
    glfwTerminate();
    return 0;
}