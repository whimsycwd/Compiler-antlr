(program (exp let (decs (dec type arrtype1 = (ty array of (type_id int))) (dec type arrtype2 = (ty array of (type_id int))) (dec (vardec var arr1 : (type_id arrtype1) := (exp (type_id arrtype2) [ (exp 10) ] of (exp 0))))) in (exps (exp (lvalue arr1))) end))