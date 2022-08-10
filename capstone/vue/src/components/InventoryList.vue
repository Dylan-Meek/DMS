<template>
  <div>
    <div class="title">
      <h1>Inventory</h1>
    </div>
    <div class="inventory">
      <car-card v-for="car in cars" v-bind:key="car.vin" :car="car"> </car-card>
    </div>
  </div>
</template>

<script>
import inventoryService from "@/services/InventoryService";
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
    inventoryService.getInventory().then((response) => {
      this.cars = response.data;
    });
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Montserrat:ital@1&display=swap");

.title {
  display: flex;
  justify-content: center;
}

h1 {
  font-family: "Montserrat", "Helvetica";
}

.inventory {
  display: flex;
  flex-direction: row;
  justify-content: space-evenly;
  align-items: center;
  flex-wrap: wrap;
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