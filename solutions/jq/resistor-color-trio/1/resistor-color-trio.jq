def colors: ["black","brown","red","orange","yellow","green","blue","violet","grey","white"];
def mapped: (colors | to_entries | map({( .value ): .key}) | add);

def constant: .[0] * 10 + .[1];

def toOutput:
    if .[0] > 9 and .[0] % 10 == 0 then
        [.[0] / 10, .[1] * 10]
    else
        .
    end
    | if .[1] <= 100 then
        [ (.[0] * .[1]), "ohms" ]
      elif .[1] <= 100000 then
        [ (.[0] * .[1] / 1000), "kiloohms" ]
      elif .[1] <= 100000000 then
        [ (.[0] * .[1] / 1000000), "megaohms" ]
      else
        [ (.[0] * .[1] / 1000000000), "gigaohms" ]
      end
    | { value: .[0], unit: .[1] }
;

.colors as $col
| ($col[:2] | map(mapped[.]) | constant) as $const
| mapped[$col[2]] as $multiplier
| [$const, (pow(10; $multiplier))]
| toOutput
