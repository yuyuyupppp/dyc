const express=require('express');
const pool=require('../pool');
const router=express.Router();
router.post("/create",(req,res)=>{
    var obj=req.body;
    console.log(obj);
    var sql=`insert into dhzl set ?`;
    pool.query(sql,[obj],(err,result)=>{
        if(err) throw err;
        if(result){
            res.send('1');
        }else{
            res.send('0');
        }
    })
})
router.post("/wzcr",(req,res)=>{
    var obj=req.body;
    console.log(obj);
    var sql=`insert into dh set ?`;
    pool.query(sql,[obj],(err,result)=>{
        if(err) throw err;
        if(result){
            res.send('1');
        }else{
            res.send('0');
        }
    })
})
router.get("/getdl",(req,res)=>{
    var sql=`select * from dhzl`;
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send(result);
        }else{
            res.send('0');
        }
    })
})
router.get("/getwz",(req,res)=>{
    var sql="select dh.id,dhzl.category,dh.title,dh.wz,dh.sort from dh left join dhzl on dh.dhzl_id=dhzl.id";
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send(result);
        }else{
            res.send('0');
        }
    })
})
router.get("/search/:id",(req,res)=>{
    var id=req.params.id;
    var sql="select * from dhzl where id=?";
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
			console.log(result);
			res.send(result);
		}else{
			res.send('0');
		}
    })
})
router.get("/wz_search/:id",(req,res)=>{
    var $id=req.params.id;
    var sql="select * from dh where id=?";
    pool.query(sql,[$id],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send(result);
            console.log(result);
        }else{
            res.send('0');
        }
    })
})
router.put("/update",(req,res)=>{
    var obj=req.body;
    console.log(obj);
    var sql="UPDATE dhzl SET ? WHERE id=?";
    pool.query(sql,[obj,obj.id],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows>0){
            res.send('1');
        }else{
            res.send('0');
        }
    })
})
router.put("/wz_put",(req,res)=>{
    var obj=req.body;
    console.log(obj);
    var sql="UPDATE dh SET ? WHERE id=?";
    pool.query(sql,[obj,obj.id],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows>0){
            res.send('1');
        }else{
            res.send("0");
        }
    })
})
router.delete("/delete/:id",(req,res)=>{
    var id=req.params.id;
    var sql="delete from dhzl where id=?";
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows>0){
            res.send('1');
        }else{
            res.send('0');
        }
    })
})
router.delete("/wz_del/:id",(req,res)=>{
    var id=req.params.id;
    var sql="delete from dh where id=?";
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