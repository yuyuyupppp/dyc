const express=require("express");
const router=express.Router();
const pool=require("../pool");
router.post("/create",(req,res)=>{
    var obj=req.body;
    console.log(obj);
    var sql=`insert into xxbj set ?`;
    pool.query(sql,[obj],(err,result)=>{
        if(err) throw err;
        if(result){
            res.send('1');
        }else{
            res.send('0');
        }
    })
})
router.get("/list",(req,res)=>{
    var sql=`select id,title from xxbj `;
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send(result);
        }else{
            res.send('0');
        }
    })
})
router.get("/listtt",(req,res)=>{
    var sql=`select * from xxbj `;
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send(result);
        }else{
            res.send('0');
        }
    })
})
router.delete("/delete/:id",(req,res)=>{
    var id=req.params.id;
    var sql="delete from xxbj where id=?";
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