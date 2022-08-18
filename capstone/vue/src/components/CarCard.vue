<template>
  <div class="card">
    <img id="car-image" v-bind:src="`${car.photo}`" />
    <div class="flex-car">
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
        <router-link
          v-bind:to="{
            name: 'Update',
            params: { vin: car.vin },
          }"
        >
          <button
            v-if="
              car.forSale === true &&
              $store.state.user.authorities[0].name === 'ROLE_ADMIN'
            "
          >
            Update
          </button>
        </router-link>
      </div>
    </div>
  </div>
</template>

<script>
import inventoryService from "@/services/InventoryService";

export default {
  name: "car-card",
  props: ["car"],
  data() {
    return {
      showForm: false,
      newVehicle: {},
      cars: [],
      filter: {
        make: "",
        model: "",
        year: "",
      },
    };
  },

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
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Montserrat:ital@1&display=swap");

* {
  font-family: "Montserrat", "Helvetica";
}

.card {
  display: flex;
  border: 2px solid black;
  border-radius: 10px;
  width: 20vw;
  height: 55vh;
  min-width: 275px;
  min-height: 400px;
  background-color: rgba(249, 247, 247, 0.9);
  justify-content: flex-start;
  align-items: center;
  flex-direction: column;
  font-family: "Montserrat", "Helvetica";
  margin-bottom: 50px;
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
</style>