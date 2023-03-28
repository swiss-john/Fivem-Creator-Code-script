PerformHttpRequest( 'https://raw.githubusercontent.com/p2thon/REYZ-FX/main/mainv' , function( err, text, headers )
    local curVer = "1.0.0"

	

	if ( text ~= nil ) then
		
		print( "Latest version: " .. text)
        print( "Installed version: " .. curVer)
		
		if ( text ~= curVer ) then
			print( "^1There is a new verison of Creator-Code^0" )
		else
			print( "^2Creator-Codes is up-to-date!^0" )
		end
	else
		print( "^1There was an error getting the latest version information.^0" )
	end
end)