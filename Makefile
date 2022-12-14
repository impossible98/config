# See in https://www.gnu.org/software/make/manual/html_node/index.html
# for more information about Makefile.
.POSIX:
SHELL := /bin/bash
YARN :=  $(shell which yarn)

# Format the code
fmt: install
	@echo -e "\033[32mFormatting the code...\033[0m"
	$(YARN) run fmt
	@echo -e "\033[32mFormatting finished.\033[0m"

# Install dependencies
install:
	@echo -e "\033[32mInstalling dependencies...\033[0m"
	if [ ! -d "node_modules" ]; then $(YARN); fi
	@echo -e "\033[32mDependencies installed.\033[0m"
