<template>
        <div class="hotel">
            <el-card class="box-card">
                <div slot="header" class="clearfix">
                    <span>住宿</span>
                    <el-button style="float: right; padding: 3px 0" type="text">
                        <el-link type="info" :href="address_url">Google map</el-link>
                    </el-button>
                </div>
                <div class="text item">
                    <p>{{name}}</p>
                </div>
                <div class="text item">
                    <p>{{address}}</p>
                </div>
                <div class="text item">
                    <p>订单号 : {{confirmationNum}}</p>
                    <p>密码 : <b>{{code}}</b></p>
                </div>
                <div class="text item">
                    <p>入住：{{checkIn}}</p>
                    <p>退房：{{checkout}}</p>
                </div>
            </el-card>
        </div>

</template>

<script>
    export default {
        name: "hotel",
        props: {
            name: String,
            address: String,
            confirmationNum: String,
            code: String,
            checkIn: String,
            checkout: String,
        },
        data: function () {
            return {address_url: "http://maps.google.com/?q=" + this.name};
        }
    }
</script>

<style scoped>

</style>