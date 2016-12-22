use "/Users/alessandrosteri/Documents/Università/LinguaggiDiProgrammazione/HLPA/files.sml";


val form = Hoare.Triple( Hoare.Equal(Hoare.Var "x", Hoare.Num 0)
                       , Hoare.Comp( Hoare.Skip 
                       	           , Hoare.If( Hoare.Minor(Hoare.Var "x", Hoare.Num 0) 
                       	           	         , Hoare.Assign("x", Hoare.Plus(Hoare.Var "x", Hoare.Num 1))
                       	           	         , Hoare.Assign("x", Hoare.Plus(Hoare.Var "x", Hoare.Num 2))))
                       , Hoare.Equal(Hoare.Var "x", Hoare.Num 2));


open Controller;
goal form;
by (Rule.tacComp 1);
by (Rule.tacIf 2);
(* by (Rule.tacAssign 3); *)
by (Rule.tacStr 3);
by (Rule.tacStr 3);

by ( Rule.tacNorm 4);

by (Rule.tacAxiom 4);

by (Rule.tacSkip 1);

by (Rule.tacNorm 1);

by (Rule.tacAxiom 1);

by (Rule.tacStr 1);

by (Rule.tacAssign 2);

by (Rule.tacAssign 2);

by (Rule.tacAxiom 1);

by (Rule.tacAxiom 1);

by (Rule.tacAxiom 1);

(*
val p1 = Hoare.Assign("b", Hoare.Var "x")
val p2 = Hoare.Assign("a", Hoare.Var "0")
val gW = Hoare.Not(Hoare.Minor ("b", Hoare.Var "y"))
val w1 = Hoare.Assign("b", Hoare.Var "x")
val p3 = Hoare.While(gW, Hoare.Var "x")

while (b ≥ y)
     do (b := b y; a := a + 1)
val form = Hoare.Triple( Hoare.Equal(Hoare.Var "x", Hoare.Num 0)
                       , Hoare.Comp( Hoare.Skip 
                       	           , Hoare.If( Hoare.Minor(Hoare.Var "x", Hoare.Num 0) 
                       	           	         , Hoare.Assign("x", Hoare.Plus(Hoare.Var "x", Hoare.Num 1))
                       	           	         , Hoare.Assign("x", Hoare.Plus(Hoare.Var "x", Hoare.Num 2))))
                       , Hoare.Equal(Hoare.Var "x", Hoare.Num 2));
                       *)
