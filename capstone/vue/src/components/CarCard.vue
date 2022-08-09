<template>
    <div class="card">
        <h2 class="car-info">{{car.year + " " + car.make + " " + car.model}}</h2>
    <img v-bind:src="`${car.photo}`"/>
        <h3 class="car-mileage">{{car.mileage}}</h3>
        <h3 class="car-status"> {{determineStatus}} </h3>

  </div>
</template>

<script>
export default {
    name: 'car-card',
    props: ['car'],

methods:{
    determineStatus(){
        if (this.car.inputId == 1){
            return "New";
        } else if (this.car.inputId == 2){
            return "Used";
        }else{
            return "Certified Pre-Owned";
        }
    },
}
};
</script>

<style>
.card {
    border: 2px solid black;
    border-radius: 10px;
    width: 250px;
    height: 550px;
    margin: 20px;
}

.card.read {
    background-color: lightgray;
}

.card .book-title {
    font-size: 1.5rem;
}

.card .book-author {
    font-size: 1rem;
}
</style>