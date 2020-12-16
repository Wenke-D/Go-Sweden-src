<template>
        <div class="train">
            <el-card class="box-card">
                <div slot="header" class="clearfix">
                    <span>火车</span>
                    <el-button style="float: right; padding: 3px 0" type="text">
                        <el-link type="info" :href="address_url">Google map</el-link>
                    </el-button>
                </div>
                <div class="text item">
                    {{depart}} -- {{dest}}
                </div>
                <div class="text item">
                    {{departTime}} <b>{{departStation}}</b>
                </div>
                <div class="text item">
                    {{destTime}} <b>{{destStation}}</b>
                </div>
            </el-card>
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
        },
        data: function () {
            return {address_url: "http://maps.google.com/?q=" + this.depart};
        }
    }
</script>

<style scoped>

</style>