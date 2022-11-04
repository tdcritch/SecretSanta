$people = @('Travis','Emily','Erin','Alex','Tyler')

$SecretSanta = $people

foreach($person in $people) {
    $BuyGiftFor = $SecretSanta | Where-Object {$_ -ne $person} | Get-Random

    [PSCustomObject]@{
        Name = $person
        BuyGift = $BuyGiftFor
    }

    $SecretSanta = $SecretSanta | Where-Object {$_ -ne $BuyGiftFor}
}