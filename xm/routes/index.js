const express=require("express");
const pool=require("../pool");
const router=express.Router();
// 用户路由
router.post("/reg",(req,res)=>{
    var obj=req.body;
    var sql="insert into ind_user set ?";
    pool.query(sql,[obj],(err,result)=>{
        if(err) throw err;
        if(result){
            res.send('1');
        }else{
            res.send('0');
        }
    })
})
router.get("/get/:uname/:upwd",(req,res)=>{
    var obj=req.params;
    console.log(obj.uname,obj.upwd);
    var sql="select * from ind_user where uname=? and upwd=?";
    pool.query(sql,[obj.uname,obj.upwd],(err,result)=>{
        if(err) throw err;
        console.log(result);
        if(result.length>0){
            req.session.loginStatus=result;
            console.log(req.session);
            res.send('1');
        }else{
            res.send('0');
        }
    })
})
module.exports=router;