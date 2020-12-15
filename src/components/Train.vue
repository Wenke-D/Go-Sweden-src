<template>
    <div class="train">
        <p>{{origin}} -- {{dest}}</p>
        <p>{{begin}} <b>{{origin}}</b></p>
        <p>{{end}} <b>{{dest}}</b></p>
    </div>

</template>

<script>
    export default {
        name: "Train",
        props: {
            origin: String,
            dest: String,
            begin: String,
            end: String
        }
    }
</script>

<style scoped>

</style>