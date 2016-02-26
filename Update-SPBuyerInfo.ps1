<<<<<<< HEAD
﻿#Addd SharePint Powershell Snapin
Add-PSSnapin Microsoft.Sharepoint.Powershell  

#Load CSV
$delimeter =','
$csvdata = Import-Csv -Path C:\Scripts\Buyers.csv -Delimiter $delimeter

#Site
$webURL = "http://sharepoint.totaltool.int/sales"
#List
$listname ="Stocking Vendors"

#Sharepoint Column Names
$buyer = "Buyer"
$buyerInfo = "BuyerInfo"

#Get Sharepoint site
$web = Get=SPWeb $webURL
#Get List and Items
$list = $web.Lists[$listname]
$items = $list.Items

foreach ($line in $csvdata){
    foreach($item in $items){
        if($item[$buyer] -eq $line.'Buyer'){
            $item[$buyerInfo] = $line.BuyerInfo
            $item.Update();
        }
    }
}
$list.update()



=======
﻿#Addd SharePint Powershell Snapin
Add-PSSnapin Microsoft.Sharepoint.Powershell  

#Load CSV
$delimeter =','
$csvdata = Import-Csv -Path C:\Scripts\Buyers.csv -Delimiter $delimeter

#Site
$webURL = "http://sharepoint.totaltool.int/sales"
#List
$listname ="Stocking Vendors"

#Sharepoint Column Names
$buyer = "Buyer"
$buyerInfo = "BuyerInfo"

#Get Sharepoint site
$web = Get=SPWeb $webURL
#Get List and Items
$list = $web.Lists[$listname]
$items = $list.Items

foreach ($line in $csvdata){
    foreach($item in $items){
        if($item[$buyer] -eq $line.'Buyer'){
            $item[$buyerInfo] = $line.BuyerInfo
            $item.Update();
        }
    }
}
$list.update()



>>>>>>> 1bb2fb71a6fbbc5a247340f72d1d703c71e7bf48
