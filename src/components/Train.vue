<template>
    <div class="train">
        <p>{{depart}} -- {{dest}}</p>
        <p>{{departTime}} <b>{{departStation}}</b></p>
        <p>{{destTime}} <b>{{destStation}}</b></p>
    </div>

</template>

<script>
    export default {
        name: "Train",
        props: {
            depart: String,
            dest: String,
            departStation: String,
            departTime: String,
            destStation: String,
            destTime: String
        }
    }
</script>

<style scoped>

</style>