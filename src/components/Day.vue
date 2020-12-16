<template>
    <el-row>
        <el-col :sm="24">
            <div class="day">
                <h2>Day {{dayNum}} {{location}}</h2>
                <el-row :gutter="20">
                    <component v-for="(value, index) in events" v-bind:is="value.type" v-bind="value"
                               v-bind:key="index"/>
                </el-row>
            </div>
        </el-col>
    </el-row>
</template>

<script>
    import Hotel from "@/components/Hotel";
    import Plane from "@/components/Plane";
    import Train from "@/components/Train";

    export default {
        name: "Day",
        components: { // register components
            Hotel: Hotel,
            Plane: Plane,
            Train: Train
        },

        props: {
            dayNum: Number,
            location: String,
            events: Array // type : value, event: value, array of events
        }
    }
</script>

<style scoped>
    .day {
        background-color: #E2ECEC;
        padding: 20px;
        border-radius: 10px;
        margin: 10px auto 10px auto;
    }


</style>