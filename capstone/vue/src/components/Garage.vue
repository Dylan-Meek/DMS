<template>
  <div>
    <h1>My Garage</h1>
    <div class="garage">
      <car-card v-for="car in cars" 
      v-bind:key="car.vin"
      :car="car">
            </car-card>
    </div>
  </div>
</template>

<script>
import garageService from "@/services/GarageService.js";
import carCard from "@/components/CarCard.vue";

export default {
  components: {
    carCard
  },
  data() {
    return {
      cars: [],
    };
  },
  created() {
garageService.getGarage().then((response) => {
    this.cars = response.data;
});

  },
};
</script>

<style scoped>
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
</style>