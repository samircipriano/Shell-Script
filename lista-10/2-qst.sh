#!/bin/bash


cat a.html | sed -E -e 'a <!DOCTYPE html>\n<html lang="pt-br">\n<head>\n  <meta charset="UTF-8">\n  <meta name="viewport"content=device-width, initial-scale=1.0">\n  <title>Samir</title>\n</head>\n<h1>Lista de IPs:</h1>\n<body>\n  <b><p>8.8.8.8</p>\n  <p>8.8.4.4</p>\n  <p>127.0.0.1</p>\n  <p>123.123.123.1</p></b>\n</body>\n</html>'

