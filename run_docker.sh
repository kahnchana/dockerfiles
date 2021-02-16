NEW_HOME="/home/kanchanaranasinghe"

nvidia-docker run  \
    --volume "$HOME":"$NEW_HOME" \
	  --ipc=host \
	kahnchana/pytorch:v0 \
	bash -c \
	"cd ${NEW_HOME}/repo/dockerfiles;  ./$1"

#    -u "$(id -u)":"$(id -g)" \