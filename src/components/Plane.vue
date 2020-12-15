<template>
    <div class="plane">
        <h3>航班</h3>
        <p>{{flightNum}} {{company}}</p>
        <p>{{departTime}} {{depart}}</p>
        <p>{{destTime}} {{dest}}</p>
    </div>
    
</template>

<script>
    export default {
        name: "Plane",
        props:{
            depart:String,
            departTime:String,
            dest:String,
            destTime:String,
            company:String,
            flightNum:String
        }
    }
</script>

<style scoped>

</style>