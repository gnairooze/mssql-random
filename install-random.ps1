
$connectionString = "Data Source=.\Dev;Initial Catalog=Draft;integrated security=SSPI;"
$rootPath = "c:\Repos\github\mssql-random\"

$files = @(
    "$rootPath\schema\views\rnd_vw_rand.sql",
    "$rootPath\schema\tables\01-rnd_Address.sql",
    "$rootPath\schema\tables\02-rnd_FemaleName.sql",
    "$rootPath\schema\tables\03-rnd_FullName.sql",
    "$rootPath\schema\tables\04-rnd_MaleName.sql",
    "$rootPath\schema\tables\05-rnd_Word.sql",
    "$rootPath\schema\tables\06-rnd_Email.sql",
    "$rootPath\schema\functions\01-rnd_getRandomNumber.sql",
    "$rootPath\schema\functions\02-rnd_getRandomDecimal.sql",
    "$rootPath\schema\functions\03-rnd_getRandomDate.sql",
    "$rootPath\schema\functions\04-rnd_getRandomTime.sql",
    "$rootPath\schema\functions\05-rnd_getRandomDateTime.sql",
    "$rootPath\schema\functions\06-rnd_getRandomText.sql",
    "$rootPath\schema\functions\07-rnd_getRandomWord.sql",
    "$rootPath\schema\functions\08-rnd_getRandomFemaleName.sql",
    "$rootPath\schema\functions\09-rnd_getRandomFullName.sql",
    "$rootPath\schema\functions\10-rnd_getRandomMaleName.sql",
    "$rootPath\schema\functions\11-rnd_getRandomAddress.sql",
    "$rootPath\schema\functions\12-rnd_getRandomEmail.sql",
    "$rootPath\data\01-rnd_FemaleName-data.sql",
    "$rootPath\data\02-rnd_FullName-data.sql",
    "$rootPath\data\03-rnd_MaleName-data.sql",
    "$rootPath\data\04-rnd_Address-data.sql",
    "$rootPath\data\05-rnd_Word-data.sql",
    "$rootPath\data\06-rnd_Email-data.sql"
)

Import-Module sqlps

foreach ($file in $files) {
    Write-Host $file

    Invoke-Sqlcmd -InputFile $file -ConnectionString $connectionString
}
