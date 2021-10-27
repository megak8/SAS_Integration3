LIBNAME gems BASE " c:\gems";

proc sort data=gems.all_custs_trans_prods;
	by date;

proc print data=gems.all_custs_trans_prods noobs;
	by date;
	var  categoryname productname state;
run;

proc means data= gems.all_custs_trans_prods;
	var unitcost;
run;

proc freq data= gems.all_custs_trans_prods;
	tables categoryname *  productname gender;
run;