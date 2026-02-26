# Makefile for Guessing Game project

README.md: guessinggame.sh
	@echo "# Guessing Game Project" > README.md
	@echo "" >> README.md
	@echo "Generated on: $$(date)" >> README.md
	@echo "" >> README.md
	@echo "Number of lines in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

.PHONY: all clean

all: README.md

clean:
	rm -f README.md
