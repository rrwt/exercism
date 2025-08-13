def colors: ["black","brown","red","orange","yellow","green","blue","violet","grey","white"];
def mapped: (colors | to_entries | map({( .value ): .key}) | add);

.colors | map(mapped[.]) | join("")[0:2] | tonumber