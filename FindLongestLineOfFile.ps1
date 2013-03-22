try {
    $reader = [System.IO.File]::OpenText("C:\fileName.txt")
    $maxLength = 0
    $longestLine = 1
    $currentLine = 1
    for(;;) {
        $line = $reader.ReadLine()
        if ($line -eq $null) { break }
        
        $currentLength = $line.Length
        if ($currentLength -gt $maxLength) {
            $maxLength = $currentLength
            $longestLine = $currentLine
        }

        if($currentLine % 1000 -eq 0)
        {
            "progress: $currentLine longestLine: $longestLine length: $maxLength currentLength: $currentLength"
        }

        $currentLine = $currentLine + 1
    }
}
finally {
    $longestLine
    $maxLength
    $reader.Close()
}

