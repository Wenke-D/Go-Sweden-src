<template>
    <div id="app">
        <img alt="Vue logo" src="./assets/logo.png">
        <HelloWorld msg="Welcome to Your Vue.js App"/>
        <Train begin="18:03" dest="Kiruna" end="09:11" origin="Sthlm"/>
        <Plane dest="Amsterdam, Schiphol (AMS)" v-bind:dest-time="new Date()" flight-num="AF1640" company="Air France"
               depart="Paris, Paris Charles De Gaulle Airport " v-bind:depart-time="new Date()"/>
    </div>
</template>

<script>
    import HelloWorld from './components/HelloWorld.vue'
    import Train from "@/components/Train";
    import Plane from "@/components/Plane";

    export default {
        name: 'App',
        components: {
            Plane,
            Train,
            HelloWorld,
        }
    }
</script>

<style>
    #app {
        font-family: Avenir, Helvetica, Arial, sans-serif;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        text-align: center;
        color: #2c3e50;
        margin-top: 60px;
    }
</style>
