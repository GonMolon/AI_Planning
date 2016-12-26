all: redflix

redflix: redflix_domain.pddl redflix_problem.pddl
	ff -o redflix_domain.pddl -f redflix_problem.pddl