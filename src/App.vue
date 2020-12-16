<template>
    <div id="app">
        <el-container>
            <el-main class="el-main">
                <Day v-for="(day,index) in plans" v-bind="day" v-bind:key="index"></Day>
            </el-main>
        </el-container>
    </div>

</template>

<script>

    import Day from "@/components/Day";
    import events from "@/assets/data";
    import schedules from "@/assets/schedule";

    export default {
        name: 'App',
        components: {
            Day
        },
        data: function () {
            return {
                plans: eachDayPlans
            };
        }
    }

    /* load data */
    let table = {
        Plane: events.planes,
        Hotel: events.hotels,
        Train: events.trains
    }

    let eachDayPlans = schedules.map(schedule => {
        let events = schedule.schedules.map((e) => {
            let event = table[e].splice(0, 1)[0]
            if (event === undefined) {
                throw new Error(e + " is not enough")
            }
            event.type = e
            return event
        });

        return {
            dayNum: schedule.day,
            location: schedule.location,
            events: events
        }
    })

    if (table.Plane.length !== 0) {
        throw new Error("you have plane left")
    }
    if (table.Train.length !== 0) {
        throw new Error("you have train left")
    }
    if (table.Hotel.length !== 0) {
        throw new Error("you have hotel left")
    }


</script>

<style>
    @media (min-width: 1000px) {

        body {
            width: 80%;
            margin-left: auto;
            margin-right: auto;
        }
    }

    .el-main {
        color: #333;
    }

</style>
