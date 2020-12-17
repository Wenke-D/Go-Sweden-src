<template>
    <div id="app">
        <a href="https://github.com/Wenke-D/Go-Sweden-src" target="_blank">Github Src</a>
        <el-container>
            <el-main class="el-main">
                <el-row>
                    <el-col :sm="24">
                        <Day0></Day0>
                    </el-col>
                </el-row>
                <template v-for="(day,index) in plans">
                    <el-row v-bind:key="index" :id="'day'+(index+1)">
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
    // components
    import Day from "@/components/Day";
    import Day0 from "@/components/Day0";

    // local data
    import planes from "@/assets/data/planes";
    import trains from "@/assets/data/trains";
    import hotels from "@/assets/data/hotels";
    import schedules from "@/assets/schedule";


    export default {
        name: 'App',
        components: {
            Day0,
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
        Plane: planes,
        Hotel: hotels,
        Train: trains
    }

    /* organize data pop event 1 by 1*/
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
