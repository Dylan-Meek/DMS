<template>
  <div class="card">
    <img v-bind:src="`${car.photo}`" />
    <div class="flex-car">
      <ul>
        <li>{{ car.year + " " + car.make + " " + car.model }}</li>
        <li>{{ car.mileage + " Miles | " + car.engine + " Engine" }}</li>
        <li>{{ "$" + car.price + " | " + determineStatus() }}</li>
        <li>{{ car.notes }}</li>
      </ul>
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
.card {
  display: flex;
  border: 4px solid black;
  border-radius: 10px;
  width: 900px;
  height: 550px;
  margin: 20px;
  background-color: rgba(255, 255, 255, 0.7);
  justify-content: center;
  align-items: center;
}

img {
  width: 45%;
  height: 90%;
}

.flex-car {
  display: flex;
}

ul {
  font-size: 30px;
}

ul > li {
  padding-bottom: 50px;
}
</style>