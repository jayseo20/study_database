@echo off
cls

SET DBNAME=myschool
SET USERNAME=root
SET TARGET_FILE=%DBNAME%-dump.sql

echo [1/2] %DBNAME% 데이터베이스를 복원합니다 : %TARGET_FILE%
echo --------------------------------

IF exist sql\%TARGET_FILE% (
    echo %DBNAME% 복원을 위해 %USERNAME% 계정의 비밀번호를 입력하세요.
	mariadb -u%USERNAME% -p < sql\%TARGET_FILE%
    echo %DBNAME% 데이터베이스 복원이 완료되었습니다.
) ELSE (
	echo 백업파일을 찾을 수 없습니다.
)

echo.

SET DBNAME=programmers
SET USERNAME=root
SET TARGET_FILE=%DBNAME%-dump.sql

echo [2/2] %DBNAME% 데이터베이스를 복원 합니다 : %TARGET_FILE%
echo --------------------------------

IF exist sql\%TARGET_FILE% (
    echo %DBNAME% 복원을 위해 %USERNAME% 계정의 비밀번호를 입력하세요.
	mariadb -u%USERNAME% -p < sql\%TARGET_FILE%
    echo %DBNAME% 데이터베이스 복원이 완료되었습니다.
) ELSE (
	echo 백업파일을 찾을 수 없습니다.
)

echo.
pause