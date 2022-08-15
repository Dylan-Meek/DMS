<template>
  <div>
    <div class="title">
      <h1>My Garage</h1>
    </div>
    <div class="garage">
      <car-card v-for="car in cars" v-bind:key="car.vin" :car="car"> </car-card>
    </div>
  </div>
</template>

<script>
import garageService from "@/services/GarageService.js";
import carCard from "@/components/CarCard.vue";

export default {
  components: {
    carCard,
  },
  data() {
    return {
      cars: [],
    };
  },
  created() {
    garageService
      .getCustomerGarageById(this.$route.params.id)
      .then((response) => {
        this.cars = response.data;
      });
  },
};
</script>

<style scoped>
.title {
  display: flex;
  justify-content: center;
}

h1 {
  font-family: "Montserrat", "Helvetica";
  color: #f9f7f7;
}

.inventory {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  align-items: center;
}
.car {
  background-color: #f7fafc;
  border-radius: 10px;
  padding: 40px;
  flex: 1;
  margin: 0 20px;
  text-align: center;
}

h1 {
  margin-left: auto;
  margin-right: auto;
}

.garage {
  display: flex;
  justify-content: center;
}
</style>