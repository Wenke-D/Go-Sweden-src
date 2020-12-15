<template>
    <div id="app">
        <Day location="kiruna" v-bind:events="eventList"></Day>
    </div>
</template>

<script>

    import Day from "@/components/Day";
    import events from "@/assets/data";


    export default {
        name: 'App',
        components: {
            Day
        },
        data: function () {
            let eventList = []
            for (let hotel of events.hotels){
                hotel.type = "Hotel"
                eventList.push(hotel);
            }
            return {
                eventList:eventList
            };
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
