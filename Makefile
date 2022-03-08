NAME			=	scop

SOURSE_DIRS		:=	src

INCLUDES_DIR	=	inc

GLFW_HEADER_DIR	=	/Users/wpoudre/.brew/include/GLFW/

GLFW_DYLIB		=	/Users/wpoudre/.brew/lib/libglfw.3.3.dylib

SRC				:=	src/main.cpp

SCOP_INC		=	$(addprefix $(INCLUDES_DIR), scop.hpp)

OBJECTS			=	$(notdir $(patsubst %.cpp,%.o, $(wildcard $(SRC))))

framework		=	-framework OpenGL

FLAG			=	-Wall

VPATH			:=	$(SOURSE_DIRS)

all: $(NAME)

$(NAME): $(OBJECTS)
	g++ $(OBJECTS) $(GLFW_DYLIB) -o $@ $(framework)


%.o: %.cpp $(RT_INC)
	gcc $(FLAG) -c $< -I $(INCLUDES_DIR) -I $(GLFW_HEADER_DIR)

clean:
	rm -rf *.o

fclean: clean
	rm -rf $(NAME)
re: fclean all

.PHONY: all clean fclean re