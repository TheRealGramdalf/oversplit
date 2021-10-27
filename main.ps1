"Welcome to the OverSplit CLI"
"Here you will be guided through the process of cutting and splicing your Overdrive audiobooks into a single *.m4b file"
"First, please enter the path to the location of your audiobooks (this will be a folder containing several folders with names like 'bd000bd9-3a9c-402c-a31a-d01a74c5f16a-425'"
$defpath = $env:UserProfile + '\Music\My Media\OverDrive'
$userpath = read-host "Enter the path to your audiobooks (press enter for default - default is $defpath)"
if( $userpath -eq '' )
{
    $userpath = $defpath
}
