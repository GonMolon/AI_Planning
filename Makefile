EXT = 3
PROB = 1

redflix: redflix_domain_ext$(EXT).pddl redflix_problem-$(PROB).pddl
	ff -o redflix_domain_ext$(EXT).pddl -f redflix_problem-$(PROB).pddl

random: redflix_domain_ext$(EXT).pddl
	python3 generator.py > redflix_random_problem.pddl
	ff -o redflix_domain_ext$(EXT).pddl -f redflix_random_problem.pddl

clean:
	rm -f redflix_random_problem.pddlm