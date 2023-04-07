#Anonnymous Function Capture
# at least on &1 capture argument

fn x -> x + 1 end  #Explicit anonymous function
( x -> x + 1 ) # remove do/end, and add brackets
&( x + 1 ) # remove body and add caputure operator '&'
&( &1 + 1 ) # replace x with capture arguments
increment = &(&1 + 1) # increment by one formula
