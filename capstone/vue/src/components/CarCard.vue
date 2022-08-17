<template>
  <div class="card">
    <tiny-slider
      :mouse-drag="true"
      :controls="false"
      :loop="false"
      :nav="false"
      items="1"
      gutter="1"
    >
      <div>
        <img
          id="car-image"
          v-bind:src="`${car.photo}`"
          alt="No additional photos"
        />
      </div>
      <div>
        <img
          id="car-image"
          v-bind:src="`${car.photo2}`"
          alt="No additional photos"
        />
      </div>
      <div>
        <img
          id="car-image"
          v-bind:src="`${car.photo3}`"
          alt="No additional photos"
        />
      </div>
      <div>
        <img
          id="car-image"
          v-bind:src="`${car.photo4}`"
          alt="No additional photos"
        />
      </div>
    </tiny-slider>

    <!-- <img id="car-image" v-bind:src="`${car.photo}`"/>
    <div class="flex-car"> -->
    <h2>{{ car.year + " " + car.make + " " + car.model }}</h2>
    <h4>{{ "$" + car.price }}</h4>
    <h4>{{ car.mileage + " Miles" }}</h4>
    <div v-if="$store.state.token !== ''">
      <button
        v-on:click="purchase"
        v-if="
          car.forSale === true &&
          $store.state.user.authorities[0].name === 'ROLE_USER'
        "
      >
        Purchase
      </button>
    </div>
    <div v-if="$store.state.token !== ''">
      <button
        v-on:click="update"
        v-if="
          car.forSale === true &&
          $store.state.user.authorities[0].name === 'ROLE_ADMIN'
        "
      >
        Update
      </button>
    </div>
  </div>
</template>

<script>
import inventoryService from "@/services/InventoryService";
import VueTinySlider from "vue-tiny-slider";

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
    purchase() {
      inventoryService.purchaseVehicle(this.car, this.$store.state.user);
      setTimeout(() => this.$router.push({ path: "/garage" }), 50);
    },
    update() {},
  },
  components: {
    "tiny-slider": VueTinySlider,
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Montserrat:ital@1&display=swap");

* {
  font-family: "Montserrat", "Helvetica";
}

alt {
  text-align: center;
}
.card {
  display: flex;
  border: 2px solid black;
  border-radius: 10px;
  width: 20vw;
  height: 60vh;
  min-width: 275px;
  min-height: 400px;
  background-color: rgba(249, 247, 247, 0.9);
  justify-content: flex-start;
  align-items: center;
  flex-direction: column;
  font-family: "Montserrat", "Helvetica";
  margin-bottom: 50px;
  overflow: hidden;
}
img {
  text-align: center;
  justify-content: center;
}

#car-image {
  width: 18vw;
  height: 25vh;
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
  font-weight: bold;
  background-color: #ffde32;
  border-radius: 5px;
  width: 8rem;
  align-content: center;
  font-size: 1.1rem;
}

h2 {
  margin: 15px;
}

h4 {
  margin: 15px;
}

div.tns-item {
  text-align: center;
}
</style>