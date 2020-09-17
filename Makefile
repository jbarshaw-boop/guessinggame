make_script:
	@touch guessinggame.sh
	@chmod +x guessinggame.sh
	@echo '#!/bin/bash' > guessinggame.sh
	@echo '#Important: This counts hidden (dot) files, as those are files as well.' >> guessinggame.sh
	@echo '#It does not count sub-directories or the files within those.' >> guessinggame.sh
	@echo 'NUMFILES=`ls -lap ./ | grep -Ev "/|^\\total" |wc -l` ' >> guessinggame.sh
	@echo '#My function. ' >> guessinggame.sh
	@echo 'guess_files () { ' >> guessinggame.sh
	@echo 'echo "How many files are in this directory? " ' >> guessinggame.sh
	@echo 'read GUESS ' >> guessinggame.sh
	@echo '} ' >> guessinggame.sh
	@echo 'guess_files ' >> guessinggame.sh
	@echo '#My while loop. ' >> guessinggame.sh
	@echo 'while [ $$GUESS != $$NUMFILES ]  ' >> guessinggame.sh
	@echo '	do if [[ $$GUESS -gt $$NUMFILES ]] ' >> guessinggame.sh
	@echo '	then echo "Too high, try again." ' >> guessinggame.sh
	@echo '	elif [[ $$GUESS -lt $$NUMFILES ]] ' >> guessinggame.sh
	@echo '	then echo "Too low, try again." ' >> guessinggame.sh
	@echo '	fi ' >> guessinggame.sh
	@echo '	guess_files ' >> guessinggame.sh
	@echo '	done ' >> guessinggame.sh
	@echo '#My if statement. ' >> guessinggame.sh
	@echo 'if [[ $$GUESS -eq $$NUMFILES ]] ' >> guessinggame.sh
	@echo 'then echo "Congratulations!" ' >> guessinggame.sh
	@echo 'fi' >> guessinggame.sh
	@echo 'The bash script is in place'
	@touch README.md
	@echo '# The Guessing Game Project' > README.md
	@echo '' >> README.md
	@echo 'This make file creates a script (./guessinggame.sh), a command-line bash script that asks you how many files are in the CWD. It will continue running until you guess the number correctly (or exit with Ctrl + c). Not to  worry though, it will tell you if the guess was too high or too low.' >> README.md
	@echo 'This game will count hidden (dot) files as well as standard files, but not directories.' >> README.md
	@echo '' >> README.md
	@echo '' >> README.md
	@echo '### Installation:' >> README.md
	@echo 'To install this bad boy, just grab the Makefile, throw it in any old directory, navigate to that directory, and run' >> README.md
	@echo '`make`' >> README.md
	@echo '' >> README.md
	@echo '**Since this is a bash (.sh) script, it will only work on Unix-like machines**' >> README.md
	@echo '' >> README.md
	@echo '' >> README.md
	@echo 'You can view the GitHub page at https://github.com/jbarshaw-boop/guessinggame' >> README.md
	@echo '' >> README.md
	@echo 'The GitHub Pages URL is https://jbarshaw-boop.github.io/guessinggame/' >> README.md
	@echo '' >> README.md
	@echo '' >> README.md
	@echo '' >> README.md
	@echo "The make file was run on $$(date +%F) at $$(date +%R)" >> README.md
	@echo '' >> README.md
	@echo "The guessinggame.sh script has $$(cat ./guessinggame.sh|wc -l) lines" >> README.md
	@echo 'The README file is in place'
