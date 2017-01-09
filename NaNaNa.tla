---- MODULE NANANA ----
EXTENDS Naturals
CONSTANT countMax
VARIABLE count, cur

CountConstraint == count <= countMax

IsNa == cur = "NA"

Initial == /\ count = 0
           /\ cur = "NA"

Step == /\ cur' = IF count < 22 THEN "NA" ELSE "BATMAN"
        /\ count' = count + 1

Spec == Initial /\ [][Step]_cur
======
