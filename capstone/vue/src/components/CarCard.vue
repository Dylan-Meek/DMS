<template>
  <div class="card">
    <img id="car-image" v-bind:src="`${car.photo}`" />
    <div class="flex-car">
      <h2>{{ car.year + " " + car.make + " " + car.model }}</h2>
      <h4>{{ "$" + car.price }}</h4>
      <h4>{{ car.mileage + " Miles" }}</h4>
      <button>Purchase</button>
    </div>
  </div>
</template>

<script>
export default {
  name: "car-card",
  props: ["car"],

  methods: {
    determineStatus() {
      if (this.car.inputId == 1) {
        return "New";
      } else if (this.car.inputId == 2) {
        return "Used";
      } else {
        return "Certified Pre-Owned";
      }
    },
  },
};
</script>

<style>
@import url("https://fonts.googleapis.com/css2?family=Montserrat:ital@1&display=swap");

.card {
  display: flex;
  border: 2px solid black;
  border-radius: 10px;
  width: 20vw;
  height: 60vh;
  min-width: 275px;
  min-height: 400px;
  background-color: rgba(255, 255, 255, 0.7);
  justify-content: flex-start;
  align-items: center;
  flex-direction: column;
  font-family: "Montserrat", "Helvetica";
  margin-bottom: 50px;
}

#car-image {
  width: 85%;
  height: 50%;
  padding: 10px;
  object-fit: cover;
}

.flex-car {
  display: flex;
  flex-direction: column;
  align-items: center;
  min-height: 0;
}

button {
  margin-left: auto;
  margin-right: auto;
  color: #162228;
  background-color: #ffde32;
  border-radius: 5px;
  width: 8rem;
  align-content: center;
  font-size: 1.1rem;
}
</style>