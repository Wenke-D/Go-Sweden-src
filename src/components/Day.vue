<template>
    <div class="day">
        <h2>{{location}}</h2>
        <component v-for="(value, index) in events" v-bind:is="value.type" v-bind="value" v-bind:key="index"/>
    </div>
</template>

<script>
    import Hotel from "@/components/Hotel";
    export default {
        name: "Day",
        components:{
            Hotel:Hotel // register component
        },
        props:{
            location:String,
            events:Array // type : value, event: value
        }
    }
</script>

<style scoped>

</style>