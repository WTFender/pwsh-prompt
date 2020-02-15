function Prompt {
	$git_string = "";
	git branch | foreach {
		if ($_ -match "^\* (.*)"){
            $git_string += $matches[1]
            Write-Host [$git_string]' ' -NoNewLine
		}
	}
    Write-Host $(PWD).ToString().replace('C:\Users\'+$env:UserName, '~') -NoNewLine
    Return " $ "
}