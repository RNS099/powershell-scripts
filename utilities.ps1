echo "`n  __________________________________"
echo " |__________________________________|"
echo " | Welcome to System Health Checker |"
echo " |__________________________________|"
echo " |__________________________________|`n`n"

while ($true) {
	echo "	[1] SFC (System File Checker) "
	echo "	[2] DSIM (Deployment Image Servicing and Management tool) "
	echo "	[3] CHKDSK (Check Disk) "
	echo "	[4] EXIT `n"

	$option = Read-Host "  Enter Option (ex: 1 for sfc) "
	
	switch ($option) {
		1 {sfc /scannow ; Break}
		2 {DISM /Online /Cleanup-Image /RestoreHealth ; Break}
		3 {chkdsk ; Break }

	}
	
	if ($option -eq 4) {
		echo "`n----------| exiting, Bye ! |----------`n"
		sleep 1
		Break
	}
	
	

}