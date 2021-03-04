const express=require('express');
const router=express.Router();
const pool=require("../pool");
const util=require('util');
const fs=require('fs');
var path=require("path");
var formidable=require('formidable');
var querystring=require('querystring');
router.post('/dytj_create',(req,res)=>{
  var form=new formidable.IncomingForm();
  form.uploadDir="./admin/img/";
  form.parse(req,function(err,fields,files){
      console.log(files);
    // var oldpath =__dirname + "/"+ files.picture.path;
    var oldpath =files.picture.path;
    var extname = path.extname(files.picture.name);
    //产生一个随机数
    var ran = parseInt((new Date().getTime()));
    //var newpath ="." + "/uploads/"+ran+extname;
    var newpath ='./admin/img/'+ran+extname;
    fs.rename(oldpath,newpath,function (err) {
        if(err){
            throw Error("改名失败");
        }
        pool.query('insert into dytj(title,jjpg,pingfen,jieshao) values(?,?,?,?)',[fields.title,newpath,fields.pingfen,fields.jieshao],(err,result)=>{
          if(err) throw err;
          //console.log(result);            
        });
        res.writeHead(200,{'Content-Type':'text/html;charset=UTF8'});
       // console.log(fields,newpath);
        res.end('成功');
      })  
  })
})
router.get('/getwz',(req,res)=>{
  var sql="select * from dytj";
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send(result);
    }else{
      res.send('0');
    }
  })
})
router.delete('/delete/:id',(req,res)=>{
  var id=req.params.id;
  var sql="delete from dytj where id=?";
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0){
        res.send('1');
    }else{
        res.send('0');
    }
  })
})
module.exports=router;

