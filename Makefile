include .env

up:
	@docker-compose -f docker-compose.tunnel.yml up -d
	@docker-compose -f $(MERRY_DIR)/docker-compose.yml up -d
	@docker-compose -f $(ALOP_SCRAPER_DIR)/docker-compose.yml up -d

down:
	@docker-compose -f docker-compose.tunnel.yml down
	@docker-compose -f $(MERRY_DIR)/docker-compose.yml down
	@docker-compose -f $(ALOP_SCRAPER_DIR)/docker-compose.yml down

restart:
	@make up
	@make down

rebuild:
	@make down
	@docker-compose -f $(MERRY_DIR)/docker-compose.yml build
	@docker-compose -f $(ALOP_SCRAPER_DIR)/docker-compose.yml build
	@make up

update:
	@cd $(MERRY_DIR) && git pull
	@cd $(ALOP_SCRAPER_DIR) && git pull

fire-up:
	@git clone $(MERRY_REPO_URL) $(MERRY_DIR)
	@git clone $(ALOP_SCRAPER_REPO_URL) $(ALOP_SCRAPER_DIR)

	@make up

