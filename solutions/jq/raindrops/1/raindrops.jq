.number as $i | [(if $i % 3 == 0 then "Pling" else "" end), (if $i % 5 == 0 then "Plang" else "" end), (if $i % 7 == 0 then "Plong" else "" end)] | add |
if . | length > 0 then .
else $i | tostring
end
