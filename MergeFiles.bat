@echo off 

setlocal EnableDelayedExpansion

::【FOR /F ["options"] %%i  IN  ('command') DO command 】为该批处理命令主要语句的基本格式
::【'dir /A-D /B /OD /TC *.jpeg'】 命令是获取该目录下扩展名为jpeg（*. jpeg）的文件名且不带目录按创建顺序排列
::【/F "tokens=*" 】是为了运用后面的dir命令

echo 程序正在运行请不要关闭窗口
FOR /F "tokens=*" %%i in ('dir /A-D /B /OD /TC *.jpeg') do (
	echo 正在写入 %%i
	type %%i >> video.mp4
	)

:: 也可以合并其他文件，如txt，需要将（*.jpeg）改为（*.txt）
::若需要生成别的文件，则需要更改（video.mp4）为（Document.txt）

endlocal
pause
exit
