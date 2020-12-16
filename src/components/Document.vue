<template>

    <div class="document">
        <h2>Documents à préparer</h2>
        <ol>
            <li v-for="(value, index) in docs" v-bind:key="index">{{ value.name }}</li>
        </ol>
    </div>

</template>

<script>
    import data from "@/assets/data";

    let docs = data.docs

    export default {
        name: "Document",
        data: function () {
            return {
                docs: docs
            }
        }
    }
</script>

<style scoped>
    .document {
        background-color: beige;
        padding: 20px;
        border-radius: 10px;
        margin: 10px auto 10px auto;
    }

</style>