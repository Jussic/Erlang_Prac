-module(project2).
-export([factors/1, helpers/2, isPrime/1, primeList/2, primeFactorization/1]).

%% Justine Clarke & Gordon Owiredu
%% FIND THE FACTORS  √

factors(N) ->
helpers (N, N).

%% BASE CASE 
helpers ( N, 0 )  ->  [ ]; 

helpers(N, X) ->
%%if N rem X == 0 -> [ X | helpers(N, X-1)];
if N rem X == 0 -> helpers (N, X - 1) ++[X];

true -> helpers(N, X - 1)
end.

%% - - - - - - - - - - - - - - - - - - - - - - - - - 
%% FIND IF NUMBER IS PRIME NUMBER  √

%% BASE CASE 
%%isPrime(1) -> false.

%%Call the function Factor 
isPrime(N) when N > 0  -> 
List = factors(N),
TheList = length(List),

if TheList == 2 -> true; 
true -> false
end.

%% - - - - - - - - - - - - - - - - - - - - - - - - - 
%% FIND PRIME LIST  √

primeList(Start, Start ) -> [ ]; 

primeList(Start, Finish) -> 
  ChPrime = isPrime(Finish),
  if 
    ChPrime == true ->
    [ Finish | primeList(Start, Finish-1)];
    true -> primeList(Start, Finish-1)
  end.

%% - - - - - - - - - - - - - - - - - - - - - - - - - 
%% FIND PRIME FACTORIZATION √

primeFactorization(N) ->
     primeFactorization(N,2,[]).
 
primeFactorization(1,_,I) -> I;
primeFactorization(N,K,I) when N rem K == 0 ->
    primeFactorization(N div K,K, [K|I]);
primeFactorization(N,K,I) ->
    primeFactorization(N,K+1,I).