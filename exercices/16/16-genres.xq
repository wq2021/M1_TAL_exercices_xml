for $genre in distinct-values(//pos/@name)
return($genre||": "||count(//pos[@name=$genre]))