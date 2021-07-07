const express = require('express');
const path = require('path');

const app = express();
const date = new Date();

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');

app.get('/', (req, res) => {
    res.render('index',{
        title: 'My title from the server', 
        headerMessage: 'My header from server',
        partialText: ' is fun!',
        date: date,
        users: [{
                username: 'Kolbe',
                email: 'kolbejz0021@gmail.com'
        },
        {
                username: 'Kade',
                email: 'kaderz0021@gmail.com'
        }]
    });
});

app.listen(3000, () => {
    console.log('Listening on port 3000');
});