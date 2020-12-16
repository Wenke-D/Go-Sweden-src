<template>
    <div class="plane">
        <el-card class="box-card">
            <div slot="header" class="clearfix">
                <span class="title">飞往 {{destCity}} 的航班</span>
                <el-button style="float: right; padding: 3px 0" type="text">
                    <el-link type="warning" :href="address_url">获取路线</el-link>
                </el-button>
            </div>
            <div class="text item">
                <span class="time">{{departTime.format("dddd Do MMM")}}</span>
                <br>
                <span class="station"><b>{{departTime.format("HH[:]mm")}} {{departStation}}</b></span>
            </div>
            <div class="text item">
                <ul class="detail">
                    <li>运营公司 {{company}}</li>

                    <li><span style="color: dodgerblue"><b>{{flightNum}}</b></span> | {{planeModel}}</li>

                    <li>飞行时间: {{duration}}</li>
                </ul>

            </div>
            <div class="text item">
                <span class="time">{{departTime.format("dddd Do MMM")}}</span>
                <br>
                <span class="station"><b>{{destTime.format("HH[:]mm")}} {{destStation}}</b></span>
            </div>

        </el-card>
    </div>
</template>

<script>
    import moment from 'moment'


    export default {
        name: "Plane",
        props: {
            departCity: String,
            departStringTime: String,
            departStation: String,

            destCity: String,
            destStringTime: String,
            destStation: String,

            company: String,
            flightNum: String,
            planeModel:String,

        },
        data: function () {
            let departTime = moment(this.departStringTime)
            let destTime = moment(this.destStringTime)

            let duration = moment.duration(destTime.diff(departTime))
            let durHour = duration.hours()
            let durMinute = duration.minutes()
            return {
                address_url: "http://maps.google.com/?q=" + this.departStation,
                departTime: departTime,
                destTime: destTime,
                duration:durHour+'hr '+durMinute+'m'
            };
        }
    }
</script>

<style scoped>
    .detail{
        list-style: none;
        margin: 5px;
        color: gray;
        font-size: 15px;
    }

    .time{
        font-size: medium;
    }

    .station{
        font-size: larger;
    }

    .title {
        color: cornflowerblue;
        font-size: larger;
    }


    .text {
        font-size: 20px;
        line-height: 1.5;
    }

    .clearfix:before,
    .clearfix:after {
        display: table;
        content: "";
    }

    .clearfix:after {
        clear: both
    }

    .box-card{
        border-radius: 25px;
    }

</style>