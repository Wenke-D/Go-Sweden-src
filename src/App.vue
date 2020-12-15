<template>
  <div id="app">
    <img alt="Vue logo" src="./assets/logo.png">
    <HelloWorld msg="Welcome to Your Vue.js App"/>
    <HelloWorld msg="Welcome to Your Vue.js App"/>
    <Train begin="18:03" dest="Kiruna" end="09:11" origin="Sthlm" />
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue'
import Train from "@/components/Train";

export default {
  name: 'App',
  components: {
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
