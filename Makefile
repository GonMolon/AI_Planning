all: redflix

redflix: redflix_domain.pddl redflix_problem.pddl
	ff -o redflix_domain.pddl -f redflix_problem.pddl

random: redflix_domain.pddl generator.py
	python3 generator.py > redflix_random_problem.pddl
	ff -o redflix_domain.pddl -f redflix_random_problem.pddl

clean:
    rm redflix_random_problems.pddl