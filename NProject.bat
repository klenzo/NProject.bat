@echo off

	set textphp=php
	set texthtaccess=RewriteEngine On
	set textcss=*{padding:0;margin:0;box-sizing:border-box;}
	set textjs=$(function(){/*Votre code ici (JQuery ou autre)*/});

:EXIST
set /p name=Nom du projet :
if exist %name% goto EXIST

	mkdir %name%
	cd %name%

:: Création a la racine !
	echo %textphp%> index.php
	echo %texthtaccess%> .htaccess

:: Création ' app ' et de ces fichiers
	mkdir app
	echo %textphp%> app\app.php

	mkdir app\config
	echo %textphp%> app\config\config.php

	mkdir app\views\inc
	echo %textphp%> app\views\home.php
	echo %textphp%> app\views\inc\head.php
	echo %textphp%> app\views\inc\footer.php
	echo %textphp%> app\views\inc\header.php

	mkdir app\class
	mkdir app\controllers

:: Création ' public ' et de ces fichiers
	mkdir public\assets\css
	mkdir public\assets\js
	mkdir public\assets\img
	mkdir public\assets\fonts

	echo %textphp%> public\index.php
	echo %textcss%> public\assets\css\style.css
	echo %textjs%> public\assets\js\app.js