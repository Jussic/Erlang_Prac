-module(project1).
-import[(product/3, isEven/1, putMyNameOnFront/2 )].

product(X,Y,Z) -> X * Y * Z. 

isEven(W) ->
if W rem 2 == 0 -> True 
	W rem 2 != 0 -> False
	true -> true.
	
putMyNameOnFront( _, List) -> 
io:format(" Justine  ~s ", [List]). 