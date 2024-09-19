const express = require('express');
const bodyParser = require('body-parser');
const mysql2 = require('mysql2/promise.js');
const app= express();

app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());
const db=mysql2.createPool({
    host: 'localhost',
    user: 'root',
    database: 'restaurante',

});
app.post('/insetar', async (req, res) => {
    const {Mesero_Nombre,Mesa_Nombre,Orden_Propina,Producto_Nombre,Producto_Precio}=req.body
    try{
        const[rows]=await db.query('INSERT INTO mesero (Mesero_Nombre) VALUES (?)', [Mesero_Nombre]);
        await db.query('INSERT INTO orden (Mesa_Nombre, Orden_Propina) VALUES (?, ?)', [Mesa_Nombre, Orden_Propina]);
        await db.query('INSERT INTO producto (Producto_Nombre, Producto_Precio) VALUES (?, ?)', [Producto_Nombre, Producto_Precio]);
    console.log('Data inserted');
    res.status(200).json({ message: 'Data inserted successfully' });
    }
    
    catch(err){
        console.log('Error',err);
    }
});
app.listen(3000, ()=> {
    console.log('Server is running on port 3000');
})