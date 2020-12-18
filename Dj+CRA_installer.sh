#!/bin/bash
# WORK ON KUBUNTU

# 1. Проверям питон, ставим https://www.python.org/ftp/python/3.9.1/python-3.9.1-amd64.exe
if python3 -V
then
  py_v=(python3 -V)
  echo "Python installed $py_v"
else
  echo 'Installing python...'
  apt-get install python3
fi

if pip3 -V
then
  pip_v=(pip3 -V)
  echo "Pip installed $pip_v"
else
  echo 'Installing pip...'
  apt-get install python3-pip -y
fi

# 2. Check npm, install
if npm -v
then
  npm_v=(npm -v)
  echo "nmp instaled v.$npm_v"
else
  echo 'Installing npm...'
  apt-get install npm_v
fi

# 3. Create folder of project
read -p 'Enter project name: ' name
mkdir $name --mode=755
cd $name
mkdir backend
mkdir frontend

# 4. Install django
cd backend
pip3 install Django
django-admin startproject $name

# 5. Install React
cd ../frontend
npx create-react-app my-app

# 6. Usage description
echo "Successfull!"
echo "To start server run: cd $name && python3 manage.py runserver"
echo "To start cra server run: cd $name/frontend && npm start"
