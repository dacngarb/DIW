
@echo off
echo INICIANDO OPTIMIZACION DE IMAGENES

if not exist resultados mkdir resultados

REM Convertir PNG a WebP
for %%F in (*.png) do (
    if exist "%%F" (
        echo Convirtiendo %%F a WebP...
        magick "%%F" -quality 80 "resultados\%%~nF.webp"
    )
)

REM Convertir JPG a WebP y AVIF
for %%F in (*.jpg) do (
    if exist "%%F" (
        echo Convirtiendo %%F a WebP...
        magick "%%F" -quality 80 "resultados\%%~nF.webp"

        echo Convirtiendo %%F a AVIF...
        magick "%%F" -quality 65 "resultados\%%~nF.avif"
    )
)

echo.
echo PROCESAMIENTO FINALIZADO
pause