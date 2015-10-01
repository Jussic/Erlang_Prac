-module( practice.erl ).
-export( [ removeAll/2 ] ).

%% PRACTICE
hello( ) -> 
io:format(" Hello World  ~s ~n " ).

%% Add, Subtract, Multiply, Divide 

%%1.
subtract( X, Y ) -> X - Y. 

%%2. 
add( X, Y) ->  X + Y. 

%%3.
multiply(X , Y) -> X * Y.

%%4.
divide(X, Y ) ->  X div Y,
X rem Y.


%% Remove ALL items from the List

%% BC
removeAll( _ , _) -> [ ]

removeAll ( Item,  [ Item |  T ] )
-> removeAll( Item, T );

removeAll ( Item, [H |T] )
-> [ H | removeAll( Item, T ) ] ).
