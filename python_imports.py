#!/usr/bin/env python
import sys, re, pandas as pd, numpy as np
import pymysql
from sqlalchemy import create_engine
#from pymysql.converters import escape_string

def get_mysql_connection(defaults_file='~/.my.cnf'):
    return pymysql.connect( read_default_file=defaults_file,
            charset='utf8', local_infile=True)

def get_mysql_engine(defaults_file='~/.my.cnf'):
    return create_engine('mysql+pymysql://', creator=lambda: get_mysql_connection(defaults_file))

#msdw_engine = get_sqlalchemy_engine_obj()
