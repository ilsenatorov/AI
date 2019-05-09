#!/usr/bin/env python
# -*- coding: utf-8 -*-
from formula import Atom, Not


def eliminate_iff(f):
    """ Eliminates the '↔' operator and returns the given formula transformed.
    """
    try:
        return (f.lchild >> f.rchild) & (f.rchild >> f.lchild)
    except AttributeError as e:
        print(e)

def eliminate_implies(f):
    """ Eliminates the '→' operator and returns the given formula transformed.
    """
    try:
        return ~f.lchild | f.rchild
    except AttributeError as e:
        print(e)

def move_not_inward(f):
    """ Moves the '¬' operator inward and returns the given formula transformed.
    """
    inside = f.child

    if isinstance(inside, Atom) or isinstance(inside, Not):
        return ~inside

    inside.lchild = ~inside.lchild
    inside.rchild = ~inside.rchild

    if inside.op == '∧':
        inside.op = '∨'

    elif inside.op == '∨':
        inside.op = '∧'

    return inside

def distribute_or_over_and(f):
    """ Distributes the or operators over ands and returns the given formula transformed.
    """
    left = f.lchild
    right = f.rchild

    left_is_atom = isinstance(left, Atom) or isinstance(left, Not)
    right_is_atom = isinstance(right, Atom) or isinstance(right, Not)

    if left_is_atom and right_is_atom:
        return f
    elif not left_is_atom and not right_is_atom and left.op != f.op and right.op != f.op:
        return ((left.lchild | right.lchild)
                & (left.rchild | right.lchild)
                & (left.lchild | right.rchild)
                & (left.rchild | right.rchild))
    elif left_is_atom and right.op != f.op:
        return ((left | right.lchild) & (left | right.rchild))
    elif right_is_atom and left.op != f.op:
        return ((right | left.lchild) & (right | left.rchild))
    else:
        return f

def eliminate_operator(f, eliminator, op):
    if isinstance(f, Atom):
        return f

    if isinstance(f, Not):
        if op == '¬':
            if isinstance(f.child, Atom) or isinstance(f.child, Not):
                return f
            f = eliminator(f)
        else:
            return ~eliminate_operator(f.child, eliminator, op)

    if op == f.op:
        f = eliminator(f)

    lchild = eliminate_operator(f.lchild, eliminator, op)
    rchild = eliminate_operator(f.rchild, eliminator, op)

    if f.op == '∧':
        return lchild & rchild
    elif f.op == '∨':
        return lchild | rchild
    elif f.op == '→':
        return lchild >> rchild
    elif f.op == '↔':
        return lchild << rchild



a = Atom('a')
b = Atom('b')
c = Atom('c')


f = ((a | b) & ~b) >> c
print(f)
print("Applying Rule 1")
f = eliminate_operator(f, eliminate_iff, '↔')
print(f)
print("Applying Rule 2")
f = eliminate_operator(f, eliminate_implies, '→')
print(f)
print("Applying Rule 3")
f = eliminate_operator(f, move_not_inward, '¬')
print(f)
print("Applying Rule 4")
f = eliminate_operator(f, distribute_or_over_and, '∨')
f = eliminate_operator(f, distribute_or_over_and, '∨')
print(f)
