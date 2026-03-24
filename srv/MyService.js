module.exports = (srv)=>{
    srv.on('hello',(req,res)=> {
        return 'Hey Amor' + req.data.name
    })
}