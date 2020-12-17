<template>

    <div class="document">
        <h2>Day 0 Avant Départ</h2>

        <el-card class="box-card">
            <div slot="header" class="clearfix">
                <span class="title">文件</span>
                <el-button style="float: right; padding: 3px 0" type="text">操作按钮</el-button>
            </div>
            <ul>
                <li v-for="(value, index) in docs" :key="index" class="text item">
                    {{value.name}}
                </li>
            </ul>
        </el-card>
        <el-card class="box-card">
            <div slot="header" class="clearfix">
                <span class="title">日用品</span>
                <el-button style="float: right; padding: 3px 0" type="text">操作按钮</el-button>
            </div>
            <div v-for="(value, index) in tools" :key="index" class="text item">
                {{value}}
            </div>
        </el-card>
    </div>
</template>

<script>
    import docs from "@/assets/data/docs";
    import tools from "@/assets/data/tools";

    export default {
        name: "Day0",
        data: function () {
            return {
                docs: docs,
                tools: tools
            }
        }
    }
</script>

<style scoped>
    .title {
        color: coral;
        font-size: larger;
    }

    .document {
        background-color: beige;
        padding: 20px;
        border-radius: 10px;
        margin: 10px auto 10px auto;
    }

    .text {
        font-size: 20px;
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

    .box-card {
        margin: 20px auto;
        border-radius: 35px;
    }

</style>