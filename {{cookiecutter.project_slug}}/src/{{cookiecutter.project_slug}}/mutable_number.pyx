# -*- coding: utf-8 -*-
"""A class representing a mutable number."""


cdef class MutableNumber:

    def __init__(self, number):
        self.history = [number]

    def get(self, idx=-1):
        return self.history[idx]

    def add(self, addend):
        number = self.get()
        number += addend
        self.history.append(number)
        return self

    def subtract(self, subtrahend):
        number = self.get()
        number -= subtrahend
        self.history.append(number)
        return self

    def multiply(self, factor):
        number = self.get()
        number *= factor
        self.history.append(number)
        return self

    def divide(self, divisor):
        number = self.get()
        number /= divisor
        self.history.append(number)
        return self
