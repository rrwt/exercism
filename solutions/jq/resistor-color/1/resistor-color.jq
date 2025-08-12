def colors: ["black","brown","red","orange","yellow","green","blue","violet","grey","white"];
def mapped: (colors | to_entries | map({( .value ): .key}) | add);

# Step 3: use your if/else as before
. | if .property == "colors" then
    colors
else
    .input.color | mapped[.]
end