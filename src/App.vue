<template>
    <div id="app">
        <el-container>
            <el-main class="el-main">
                <el-row>
                    <el-col :sm="24">
                        <Document></Document>
                    </el-col>
                </el-row>
                <template v-for="(day,index) in plans">
                    <el-row v-bind:key="index">
                        <el-col :sm="24">
                            <Day v-bind="day"></Day>
                        </el-col>
                    </el-row>
                </template>
            </el-main>
        </el-container>
    </div>

</template>

<script>

    import Day from "@/components/Day";
    import events from "@/assets/data";
    import schedules from "@/assets/schedule";
    import Document from "@/components/Document";

    export default {
        name: 'App',
        components: {
            Document,
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


    #app {
        font-family: "Helvetica Neue", Helvetica, "PingFang SC", "Hiragino Sans GB", "Microsoft YaHei", "微软雅黑", Arial, sans-serif;
        width: 100%;
        margin-left: auto;
        margin-right: auto;
    }

    @media screen and (min-width: 1000px) {

        #app{
            font-family: "Helvetica Neue", Helvetica, "PingFang SC", "Hiragino Sans GB", "Microsoft YaHei", "微软雅黑", Arial, sans-serif;
            line-height: 1.5;
            width: 1000px;
            margin-left: auto;
            margin-right: auto;
        }
    }

    .el-main {
        color: #333;
    }

</style>
