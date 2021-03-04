const express=require("express");
const fs = require("fs");
var session=require("express-session");
const bodyParser=require("body-parser");
const dhRouter=require("./routes/daohao");
const wzRouter=require("./routes/wz");
const xxbjRouter=require("./routes/xxbj");
const indexRouter=require("./routes/index");
let app=express();
app.listen(8080);
app.use(session({
    secret:'keyboard cat',
    resave:false,
    saveUninitialized:true
}))
app.use(express.static("admin"));
app.use(express.static("index"));
// app.use(bodyParser.json({ limit: '50mb' }));
// app.use(bodyParser.urlencoded({ limit: '50mb', extended: true }));
app.use(bodyParser.urlencoded({
    extended:false
}))
app.use('/dh',dhRouter); 
app.use('/wz',wzRouter);  
app.use('/xxbj',xxbjRouter); 
app.use('/user',indexRouter);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
