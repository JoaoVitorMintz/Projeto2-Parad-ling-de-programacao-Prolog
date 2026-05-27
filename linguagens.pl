% Predicado com a sequência de argumentos de nome da linguagem e ano de criação: linguagem(nome, ano).
linguagem('Fortran', 1955).
linguagem('Fortran 66', 1966).
linguagem('Fortran 77', 1977).
linguagem('Fortran 90', 1990).
linguagem('Fortran 97(HPF)', 1997).
linguagem('Fortran 04', 2004).
linguagem('Basic', 1966).
linguagem('Visual Basic', 1993).
linguagem('VB NET', 2003).
linguagem('Cobol', 1955).
linguagem('Cobol 68', 1968).
linguagem('Cobol 74', 1974).
linguagem('Cobol 85', 1985).
linguagem('Cobol 02', 2002).
linguagem('PL/I', 1963).
linguagem('Algol 60', 1960).
linguagem('Algol 68', 1968).
linguagem('Pascal', 1972).
linguagem('Modula 2', 1978).
linguagem('Modula 3', 1987).
linguagem('Ada 83', 1983).
linguagem('Ada 95', 1995).
linguagem('Spark/Ada', 2003).
linguagem('IAL', 1959).
linguagem('Jovial', 1967).
linguagem('Concurrent Pascal', 1973).
linguagem('Simula', 1968).
linguagem('Smalltalk', 1985).
linguagem('Eiffel', 1993).
linguagem('Java', 1997).
linguagem('JML', 2001).
linguagem('Java 5', 2002).
linguagem('BCPL', 1969).
linguagem('C', 1972).
linguagem('C++', 1986).
linguagem('C++ 03', 1995).
linguagem('C#', 2001).
linguagem('awk', 1975).
linguagem('Tcl/Tk', 1987).
linguagem('Perl', 1985).
linguagem('Python', 1994).
linguagem('Python 2.4', 2005).
linguagem('PHP', 1996).
linguagem('APL', 1964).
linguagem('APL2', 1974).
linguagem('Lisp', 1960).
linguagem('Scheme', 1977).
linguagem('Common Lisp', 1986).
linguagem('CLOS', 1992).
linguagem('Iswim', 1967).
linguagem('ML', 1977).
linguagem('Miranda', 1984).
linguagem('Haskell', 1991).
linguagem('Haskell 98', 1998).
linguagem('SML', 1986).
linguagem('OCAML', 1996).
linguagem('Prolog', 1973).
linguagem('CLP', 1987).
linguagem('Prolog Standard', 1998).
linguagem('Sequel', 1976).
linguagem('SQL 92', 1992).
linguagem('SQL 99', 1999).

% Predicado com a precedência imediata: predecessora(nome da linguagem, nome da predecessora)
predecessores('Fortran 66', 'Fortran').
predecessores('Fortran 77', 'Fortran 66').
predecessores('Fortran 90', 'Fortran 77').
predecessores('Fortran 97(HPF)', 'Fortran 90').
predecessores('Fortran 04', 'Fortran 97(HPF)').
predecessores('Visual Basic', 'Basic').
predecessores('VB NET', 'Visual Basic').
predecessores('Cobol 68', 'Cobol').
predecessores('Cobol 74', 'Cobol 68').
predecessores('Cobol 85', 'Cobol 74').
predecessores('Cobol 02', 'Cobol 85').
predecessores('PL/I', 'Fortran').
predecessores('PL/I', 'Cobol').
predecessores('PL/I', 'Algol 60').
predecessores('Algol 60', 'IAL').
predecessores('Algol 68', 'Algol 60').
predecessores('Jovial', 'IAL').
predecessores('Pascal', 'Algol 60').
predecessores('Pascal', 'Simula').
predecessores('Modula 2', 'Pascal').
predecessores('Modula 3', 'Modula 2').
predecessores('Ada 83', 'Pascal').
predecessores('Concurrent Pascal', 'Pascal').
predecessores('Ada 95', 'Ada 83').
predecessores('Spark/Ada', 'Ada 95').
predecessores('Smalltalk', 'Simula').
predecessores('Eiffel', 'Smalltalk').
predecessores('Java', 'Smalltalk').
predecessores('Java', 'C++').
predecessores('JML', 'Java').
predecessores('Java 5', 'Java').
predecessores('C', 'BCPL').
predecessores('C++', 'C').
predecessores('C++ 03', 'C++').
predecessores('C#', 'C++ 03').
predecessores('awk', 'C').
predecessores('Tcl/Tk', 'awk').
predecessores('Perl', 'awk').
predecessores('Python', 'Perl').
predecessores('Python 2.4', 'Python').
predecessores('PHP', 'Perl').
predecessores('APL2', 'APL').
predecessores('Common Lisp', 'Lisp').
predecessores('CLOS', 'Common Lisp').
predecessores('Scheme', 'Lisp').
predecessores('ML', 'Iswim').
predecessores('Miranda', 'ML').
predecessores('Haskell', 'Miranda').
predecessores('Haskell 98', 'Haskell').
predecessores('SML', 'ML').
predecessores('OCAML', 'SML').
predecessores('CLP', 'Prolog').
predecessores('Prolog Stardard', 'CLP').
predecessores('SQL 92', 'SEQUEL').
predecessores('SQL 99', 'SQL 92').

% Resolução Ex 1 do Projeto.
lingcompre(Ling) :- predecessores(Ling, _).

% Resolução Ex 2 do Projeto.
lingprecompre(Ling) :- (predecessores(Ling, _), predecessores(_, Ling)).

% Resolução Ex 3 do Projeto.
lingpreano(Ling, PrAno) :- linguagem(Ling, Ano), Ano =< PrAno.

% Resolução Ex 4 do Projeto.
lingnaosaopre(Ling) :- linguagem(Ling, _), (predecessores(Ling, _), \+ predecessores(_, Ling)).

% Resolução Ex 5 do Projeto.
lingnaotempre(Ling) :- linguagem(Ling, _), \+ predecessores(Ling, _).
