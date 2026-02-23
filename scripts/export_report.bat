@echo off
cd /d "%~dp0..\"

call .venv\Scripts\activate

jupyter nbconvert euronext_report.ipynb ^
  --to pdf ^
  --template templates/report.tex.j2 ^
  --output-dir build ^
  --output euronext_report.pdf

echo Done: build\euronext_report.pdf
pause