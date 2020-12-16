<template>
        <div class="plane">
            <el-card class="box-card">
                <div slot="header" class="clearfix">
                    <span>航班</span>
                    <el-button style="float: right; padding: 3px 0" type="text">
                        <el-link type="info" :href="address_url">Google map</el-link>
                    </el-button>
                </div>
                <div class="text item">
                    {{flightNum}} {{company}}
                </div>
                <div class="text item">
                    {{departTime}} {{depart}}
                </div>
                <div class="text item">
                    {{destTime}} {{dest}}
                </div>
            </el-card>
        </div>
</template>

<script>
    export default {
        name: "Plane",
        props: {
            depart: String,
            departTime: String,
            dest: String,
            destTime: String,
            company: String,
            flightNum: String
        },
        data: function () {
            return {address_url: "http://maps.google.com/?q=" + this.depart};
        }
    }
</script>

<style scoped>
    .text {
        font-size: 14px;
    }

    .item {
        margin-bottom: 18px;
    }

    .clearfix:before,
    .clearfix:after {
        display: table;
        content: "";
    }

    .clearfix:after {
        clear: both
    }

</style>