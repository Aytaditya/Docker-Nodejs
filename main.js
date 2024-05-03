const express=require('express');
const app=express();

app.listen('/',(req,res)=>{
   return  res.json({message:'Hello World'});
});

const port=5000;

app.listen(port,()=>{
    console.log('Server is running on port 5000');
});