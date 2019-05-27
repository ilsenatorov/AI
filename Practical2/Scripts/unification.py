#!/usr/bin/python
from collections import ChainMap
from pl1_formula import *

class Substitution(dict):
    """
    Representing a substitution set. The dictionary keys must be Variable
    objects. There are three ways of creating a Substitution objects:
        1) Substitution()      # Creates the empty set.
        2) Singleton(x, t)     # Creates a substitution containing the single
                               # element {x/t}. x must be a Variable object, t
                               # can be an arbitrary term (i.e., Constant,
                               # Variable, or Function).
        3) Composition(s1, s2) # Creates the composed substitution s1s2. s1
                               # and s2 must both be Substitution objects.

    You can use Substitution objects pretty much the same as dictionaries. For
    example, given a Substitution object s, iterating over s can be done as
    follows:
        for var in s:
            term = s[var]
            # ... do something
    or directly via
        for (var, term) in s.iteritems():
            # ... do something ...
    To extend s by x2/t2, do
        s[x2] = t2
    To check whether s defines a substitution for x:
        if x in s:
            # ... do something
    To print s:
        print(s)
    """

    @staticmethod
    def Singleton(var, term):
        assert(isinstance(var, Variable))
        assert(isinstance(term, Variable) or isinstance(term, Constant) or isinstance(term, Function))
        s = Substitution()
        s[var] = term
        return s

    @staticmethod
    def Composition(s1, s2):
        assert(isinstance(s1, Substitution))
        assert(isinstance(s2, Substitution))
        comp = Substitution()

        for key2, val2 in s2.items():
            used = False
            for key1, val1 in s1.items():
                if isinstance(val1, Constant):
                    comp[key1] = val1
                elif val1.contains_variable(key2):
                    comp[key1] = val1.apply_substitutions({key2: val2})
                    used = True
                else:
                    comp[key1] = val1
            if not used and key2 not in s1:
                comp[key2] = val2
        return comp

    def __str__(self):
        return "{%s}" % ", ".join(["%s/%s" % (var, self[var]) for var in self])

P = PredicateSymbol("P", 3)
f = FunctionSymbol("f", 1)
x = Variable("x")
y = Variable("y")
z = Variable("z")
c = Constant("c")
atom1 = P(x, c, f(y))
atom2 = P(x, z, z)
clause = [atom1, atom2]


def compute_disagreement_set(atoms):
    """
    Compute the disagreement set for the provided set of atoms.


    Result must be a collection (list, set, etc) of term objects (Variable,
    Constant, Function).

    You can assume that all atoms are over the same predicate.
    """
    if len(atoms) <= 1:
        return set()

    # Get the predicate's arity
    arity = next(iter(atoms)).symbol.arity

    # check the items in each atom, return first disagreement
    for i in range(arity):
        function_count = set()
        mismatch_set = set()
        has_var = False
        for atom in atoms:
            mismatch_set.add(atom.terms[i])
            if isinstance(atom.terms[i], Function):
                function_count.add(atom.terms[i].symbol)
            if isinstance(atom.terms[i], Variable):
                has_var = True

        if len(mismatch_set) > 1:
            if has_var or len(function_count) > 1:
                return mismatch_set
            else:
                return compute_disagreement_set(mismatch_set)
    return set()

def unification(atoms):
    """
    Runs the unification algorithm on the given set of atoms. If there exists
    a unifier for atoms, returns an idempotent mgu. Otherwise, returns None.
    """
    if len(atoms) <= 1:
        return

    arity = next(iter(atoms)).symbol.arity
    variables = set()
    terms = set()

    T = set(atoms)
    s = Substitution()
    while len(T) > 1:
        D = compute_disagreement_set(T)
        for item in D:
            if isinstance(item, Variable):
                variables.add(item)
            elif isinstance(item, Term):
                terms.add(item)

        for var in variables:
            for term in terms:
                if term.contains_variable(var):
                    break
                return None



def run_disagreement_set_print_result(atoms):
    print("Clause: {%s}" % (", ".join([str(e) for e in atoms])))
    d = compute_disagreement_set(atoms)
    print("Disagreement set: {%s}" % (", ".join([str(e) for e in d])))
    print("")


def run_unification_print_result(atoms):
    print("Clause: {%s}" % (", ".join([str(e) for e in atoms])))
    s = unification(atoms)
    if s is None:
        print("Is not unifiable!")
    else:
        print("Unifier: %s" % s)
    print("")


if __name__ == "__main__":
    # Define predicate symbols, function symbols, as well as variables and
    # constants:
    P = PredicateSymbol("P", 3)
    f = FunctionSymbol("f", 1)
    g = FunctionSymbol("g", 1)
    v = Variable("v")
    w = Variable("w")
    x = Variable("x")
    y = Variable("y")
    z = Variable("z")
    a = Constant("a")
    b = Constant("b")
    c = Constant("c")

    # Disagreement set
    # Examples of slide 25 of chapter 8
    run_disagreement_set_print_result([P(x, c, f(y)), P(x, z, z)])
    run_disagreement_set_print_result([P(x, a, f(y)), P(y, a, f(y))])
    run_disagreement_set_print_result([P(v, f(z), g(w)), P(v, f(z), g(f(z)))])
    run_disagreement_set_print_result([P(v, f(z), g(w)), P(v, f(z), g(f(z))), P(v, f(z), f(x))])

    # Unification
    # Example of slide 27 of chapter 8
    run_unification_print_result([P(x, f(y), y), P(z, f(b), b)])

