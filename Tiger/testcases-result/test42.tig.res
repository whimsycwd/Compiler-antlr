(program (exp let (decs (dec type arrtype1 = (ty array of (type_id int))) (dec type rectype1 = (ty { (tyfields name : (type_id string) , address : (type_id string) , id : (type_id int) , age : (type_id int)) })) (dec type arrtype2 = (ty array of (type_id rectype1))) (dec type rectype2 = (ty { (tyfields name : (type_id string) , dates : (type_id arrtype1)) })) (dec type arrtype3 = (ty array of (type_id string))) (dec (vardec var arr1 := (exp (type_id arrtype1) [ (exp 10) ] of (exp 0)))) (dec (vardec var arr2 := (exp (type_id arrtype2) [ (exp 5) ] of (exp (type_id rectype1) { name = (exp "aname") , address = (exp "somewhere") , id = (exp 0) , age = (exp 0) })))) (dec (vardec var arr3 : (type_id arrtype3) := (exp (type_id arrtype3) [ (exp 100) ] of (exp "")))) (dec (vardec var rec1 := (exp (type_id rectype1) { name = (exp "Kapoios") , address = (exp "Kapou") , id = (exp 02432) , age = (exp 44) }))) (dec (vardec var rec2 := (exp (type_id rectype2) { name = (exp "Allos") , dates = (exp (type_id arrtype1) [ (exp 3) ] of (exp 1900)) })))) in (exps (exp (lvalue (lvalue arr1) [ (exp 0) ]) := (exp 1)) ; (exp (lvalue (lvalue arr1) [ (exp 9) ]) := (exp 3)) ; (exp (lvalue (lvalue (lvalue arr2) [ (exp 3) ]) . name) := (exp "kati")) ; (exp (lvalue (lvalue (lvalue arr2) [ (exp 1) ]) . age) := (exp 23)) ; (exp (lvalue (lvalue arr3) [ (exp 34) ]) := (exp "sfd")) ; (exp (lvalue (lvalue rec1) . name) := (exp "sdf")) ; (exp (lvalue (lvalue (lvalue rec2) . dates) [ (exp 0) ]) := (exp 2323)) ; (exp (lvalue (lvalue (lvalue rec2) . dates) [ (exp 2) ]) := (exp 2323))) end))