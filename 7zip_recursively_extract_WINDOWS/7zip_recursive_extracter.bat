@FOR /R %%a IN (*.zip) DO @(
    @7z x "%%a" -o"%%~dpna" -aoa
    
)


@FOR /R %%a IN (*.xz) DO @(
        @7z x "%%a" -o"%%~dpna" -aoa
)


@FOR /R %%a IN (*.zip) DO @(
     @if ["%~dp0"] NEQ ["%%~dpa"] (
	del "%%a" 
	)
)

@FOR /R %%a IN (*.xz) DO @(
	@if ["%~dp0"] NEQ ["%%~dpa"] (
    del "%%a"
	)
)

set /p DUMMY=Hit ENTER to continue...
