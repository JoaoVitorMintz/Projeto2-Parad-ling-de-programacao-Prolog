% Aluno: João Vitor Garcia Aguiar Mintz; RA: 10440421
% Aluno: Giovanni Barreiro Garitano de Castro; RA: 10435745

% Predicado com a sequência de argumentos de nome da linguagem e ano de criação: linguagem(nome, ano).
linguagem('Fortran', 1955).
linguagem('Fortran 66', 1966).
linguagem('Fortran 77', 1977).
linguagem('Fortran 90', 1990).
linguagem('Fortran 97(HPF)', 1997).
linguagem('Fortran 04', 2004).
linguagem('Basic', 1964).
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
linguagem('Java', 1995).
linguagem('JML', 2001).
linguagem('Java 5', 2002).
linguagem('BCPL', 1969).
linguagem('C', 1972).
linguagem('C++', 1986).
linguagem('C++ 03', 2003).
linguagem('C#', 2001).
linguagem('awk', 1975).
linguagem('Tcl/Tk', 1987).
linguagem('Perl', 1985).
linguagem('Python', 1991).
linguagem('Python 2.4', 2005).
linguagem('PHP', 1994).
linguagem('APL', 1964).
linguagem('APL2', 1974).
linguagem('Lisp', 1960).
linguagem('Scheme', 1977).
linguagem('Common Lisp', 1986).
linguagem('CLOS', 1992).
linguagem('Iswim', 1967).
linguagem('ML', 1977).
linguagem('Miranda', 1984).
linguagem('Haskell', 1990).
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
predecessora('Fortran 66', 'Fortran').
predecessora('Fortran 77', 'Fortran 66').
predecessora('Fortran 90', 'Fortran 77').
predecessora('Fortran 97(HPF)', 'Fortran 90').
predecessora('Fortran 04', 'Fortran 97(HPF)').
predecessora('Visual Basic', 'Basic').
predecessora('VB NET', 'Visual Basic').
predecessora('Cobol 68', 'Cobol').
predecessora('Cobol 74', 'Cobol 68').
predecessora('Cobol 85', 'Cobol 74').
predecessora('Cobol 02', 'Cobol 85').
predecessora('PL/I', 'Fortran').
predecessora('PL/I', 'Cobol').
predecessora('PL/I', 'Algol 60').
predecessora('Algol 60', 'IAL').
predecessora('Algol 68', 'Algol 60').
predecessora('Jovial', 'IAL').
predecessora('Pascal', 'Algol 60').
predecessora('Pascal', 'Simula').
predecessora('Modula 2', 'Pascal').
predecessora('Modula 3', 'Modula 2').
predecessora('Ada 83', 'Pascal').
predecessora('Concurrent Pascal', 'Pascal').
predecessora('Ada 95', 'Ada 83').
predecessora('Spark/Ada', 'Ada 95').
predecessora('Smalltalk', 'Simula').
predecessora('Eiffel', 'Smalltalk').
predecessora('Java', 'Smalltalk').
predecessora('Java', 'C++').
predecessora('JML', 'Java').
predecessora('Java 5', 'Java').
predecessora('C', 'BCPL').
predecessora('C++', 'C').
predecessora('C++ 03', 'C++').
predecessora('C#', 'C++ 03').
predecessora('awk', 'C').
predecessora('Tcl/Tk', 'awk').
predecessora('Perl', 'awk').
predecessora('Python', 'Perl').
predecessora('Python 2.4', 'Python').
predecessora('PHP', 'Perl').
predecessora('APL2', 'APL').
predecessora('Common Lisp', 'Lisp').
predecessora('CLOS', 'Common Lisp').
predecessora('Scheme', 'Lisp').
predecessora('ML', 'Iswim').
predecessora('Miranda', 'ML').
predecessora('Haskell', 'Miranda').
predecessora('Haskell 98', 'Haskell').
predecessora('SML', 'ML').
predecessora('OCAML', 'SML').
predecessora('CLP', 'Prolog').
predecessora('Prolog Stardard', 'CLP').
predecessora('SQL 92', 'SEQUEL').
predecessora('SQL 99', 'SQL 92').

% 1. Defina uma regra para informar (true ou false) se uma determinada 
% linguagem possui alguma predecessora:
lingcompre(Ling) :- predecessora(Ling, _).

% 2. Defina uma regra para informar (true ou false) se uma determinada linguagem, além de possuir uma
% linguagem predecessora (anterior) também seja predecessora de uma outra linguagem:
lingprecompre(Ling) :- (predecessora(Ling, _), predecessora(_, Ling)).

% 3. Defina uma regra para informar linguagens predecessoras de linguagens desenvolvidas em um
% determinado ano. Importante: a resposta da consulta deve ser considerada conforme o argumento para
% o ano do predicado linguagem no momento da definição na base de conhecimento.
lingpreano(Ling, PrAno) :- linguagem(Ling, Ano), Ano == PrAno.

% 4. Defina uma regra para informar quais são as linguagens L que NÃO são predecessoras de outras
% linguagens, ou seja, NÃO tem linguagens sucessoras.
lingnaosaopre(Ling) :- linguagem(Ling, _), (predecessora(Ling, _), \+ predecessora(_, Ling)).

% 5. Defina uma regra para informar quais são as linguagens L que NÃO tem predecessora.
lingnaotempre(Ling) :- linguagem(Ling, _), \+ predecessora(Ling, _).

% 6. Defina uma regra para informar as linguagens que surgiram em uma determinada década. Nota: os testes 
% o segundo  argumento  sempre  será  múltiplo  de  10  e  a  resposta  da  consulta  deve  ser  considerada 
% conforme o argumento para o ano do predicado linguagem no momento da definição na base de dados.
lingdecada(L, Decada) :- linguagem(L, Ano), Decada is div(Ano, 10) * 10.

% 7.  Defina uma regra para informar as linguagens (LPP)  que são predecessora de outras linguagens LP que, 
% por sua vez, também são predecessora de uma outra linguagem L.
lingprepre(LPP, LP, L) :- predecessora(LP, LPP), predecessora(L, LP).

% 8. Defina uma  regra para informar as linguagens predecessoras LP e a sua sucessora LS de forma que elas 
% tenham uma diferença de pelo menos 10 anos (uma década) de desenvolvimento entre LP e LS.
lingtempo10(LP, LS) :- predecessora(LS, LP), linguagem(LP, AnoLP), linguagem(LS, AnoLS), AnoLS - AnoLP >= 10.

% 9. Defina uma regra para informar se duas diferentes linguagens têm uma mesma linguagem predecessora.
lingmesmapre(L1, L2, LP) :- L1 \= L2, predecessora(L1, LP), predecessora(L2, LP).