"Welcome to the OverSplit CLI"
"Here you will be guided through the process of cutting and splicing your Overdrive audiobooks into a single *.m4b file"
"First, please enter the path to the location of your audiobooks (this will be a folder containing several folders with names like 'bd000bd9-3a9c-402c-a31a-d01a74c5f16a-425'"
# Set the default path
$defpath = $env:UserProfile + '\Music\My Media\OverDrive'
# Get input from the  
$pathin = read-host "Enter the path to your audiobooks (press enter for default - default is $defpath)"
if( $pathin -eq '' )
{
    $pathin = $defpath
}
# Set testvar as = false so the script will do the while loop until the user gets it correct
$testvar = "false"
# Check if the input is a valid path, and if not, prompt the user to try again.
while ( $testvar -eq "false" )
{
    if (!(test-path -path $pathin))
    {
        "Invalid path! Please try again."
        $pathin = read-host "Enter the path to your audiobooks (press enter for default - default is $defpath)"
        if( $pathin -eq '' )
        {
            $pathin = $defpath
        }
    }
    else{
        "Valid path! Continuing script..."
        "Your selected path is $pathin"
        $testvar = "true"
    }
}