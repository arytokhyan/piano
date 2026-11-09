#!/bin/sh
# Wraps app.html (body content) into a standalone index.html for static hosting.
{
printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n<meta name="apple-mobile-web-app-capable" content="yes">\n<meta name="mobile-web-app-capable" content="yes">\n<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">\n<link rel="manifest" href="manifest.webmanifest">\n<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px);box-sizing:border-box}body{margin:0}[hidden]{display:none!important}*,*::before,*::after{box-sizing:border-box}</style>\n</head>\n<body>\n'
cat app.html
printf '\n</body>\n</html>\n'
} > index.html
