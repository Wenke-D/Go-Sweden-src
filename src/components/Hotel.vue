<template>
    <div class="hotel">
        <h3>住宿</h3>
        <p>{{name}}</p>
        <p>{{address}}</p>
        <p>订单号 : {{confirmationNum}}</p>
        <p>密码 : <b>{{code}}</b></p>
        <p>入住：{{checkIn}}</p>
        <p>退房：{{checkout}}</p>
    </div>
    
</template>

<script>
    export default {
        name: "hotel",
        props:{
            name:String,
            address:String,
            confirmationNum:String,
            code:String,
            checkIn:String,
            checkout:String,
        }
    }
</script>

<style scoped>

</style>