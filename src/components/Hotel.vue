<template>
        <div class="hotel">
            <el-card class="box-card">
                <div slot="header" class="clearfix">
                    <span class="title">住宿</span>
                    <el-button style="float: right; padding: 3px 0" type="text">
                        <el-link type="warning" :href="address_url">获取路线</el-link>
                    </el-button>
                </div>
                <div class="text item">
                    <h3>{{name}}</h3>
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
    .title{
        color: coral;
        font-size: larger;
    }

    .text {
        font-size: 20px;
        line-height: 1.5;
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

    .box-card{
        border-radius: 25px;
    }
</style>