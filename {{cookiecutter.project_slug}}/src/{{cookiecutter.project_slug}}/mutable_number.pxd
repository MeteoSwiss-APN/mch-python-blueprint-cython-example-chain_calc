# -*- coding: utf-8 -*-


cdef class MutableNumber:
    cdef readonly:
        list history
