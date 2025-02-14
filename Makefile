DOCKER_COMPOSE := docker-compose

DETECTED_OS := $(shell uname)


BUILD :
	@echo "Running in $(DETECTED_OS)"
	@if [ $(DETECTED_OS) = Linux ];then \
		echo "OS is linux and running docker compose"; \
	else \
		exit 1; \
	fi 
	@$(DOCKER_COMPOSE) build; \
	if [ $$? -eq 0 ]; then \
		echo "Docker compose success"; \
	else \
		echo "Docker compose failed"; \
		exit 1; \
	fi






#	@echo "running in $(DETECTED_OS)"
#	@$(DOCKER_COMPOSE) build
#	status=$$?
#	if [ $$status -eq 0 ]; then  
#		echo "docker compose sucess" 
#	else
#		echo " dockercompose fail"
#		exit 1
#	fi

#	 @$(DOCKER_COMPOSE) build && echo "docker compose success" || (echo "docker compose failed"; exit 1) 

UP:
	$(DOCKER_COMPOSE) up -d

DOWN: 
	$(DOCKER_COMPOSE) down

CLEAN:
	docker system prune









