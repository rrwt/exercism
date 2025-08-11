.year | if . % 4 == 0 then
    if . % 100 == 0 then
        if . % 400 == 0 then
            true
        else
            false
        end
    else
        true
    end
else
    false
end