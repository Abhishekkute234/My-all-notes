CONNECTING FRONTEND AND BACKEND ON SAME PORT 

After creating frontend and backend 
in frontend we run command npm run build 
then a folder name dist is created in frontend folder
we need to move that dist folder to backend folder and rename it to public
so that backend can serve the frontend files to the browser when we run the backend server
and then add the middle ware in backend server file to serve the static files from the public folder
const express = require('express');
const app = express();
const path = require('path');

also name the port same for both frontend and backend to avoid any confusion
const PORT = 3000;


The main problem is when you make the chnages in the frontend code and run the build command again it will create a new dist folder and you need to move that new dist folder to backend and rename it to public again and replace the old public folder with the new one

-> FRONTEND=> build [npm run build]=> dist folder
COPY dist to backend folder and rename it to public

run backend server [node server.js]


DEPLOY THE APPLICATION ON SERVER USING DOCKER 

