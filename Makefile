NAME			=	scop

SOURSE_DIRS		:=	src

INCLUDES_DIR	=	inc

SRC				:=	src/main.cpp

SCOP_INC		=	$(addprefix $(INCLUDES_DIR), scop.hpp)

OBJECTS			=	$(notdir $(patsubst %.cpp,%.o, $(wildcard $(SRC))))

framework		=	-framework OpenGL

FLAG			=	-Wall

all: $(NAME)

$(NAME): $(OBJECTS)
	g++ $(OBJECTS) -o $@ $(framework)

VPATH			:=	$(SOURSE_DIRS)

%.o: %.cpp $(RT_INC)
	gcc $(FLAG) -c $< -I $(INCLUDES_DIR)

clean:
	rm -rf *.o

fclean: clean
	rm -rf $(NAME)
re: fclean all

.PHONY: all clean fclean re