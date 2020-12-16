<template>

    <div class="document">
        <ul>
            <el-row>
                <template v-for="index in 10">
                    <el-col span="8" v-bind:key="index">
                        <li>{{ index }}</li>
                    </el-col>

                </template>
            </el-row>

        </ul>
    </div>

</template>

<script>
    export default {
        name: "Document",
        props: {
            name: String
        }
    }
</script>

<style scoped>

</style>