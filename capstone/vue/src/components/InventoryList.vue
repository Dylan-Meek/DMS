<template>
  <div>
    <h1>Inventory</h1>
    <div class="inventory">
        <div class="car"
        v-for="car in cars"
        v-bind:key="car.vin">
        {{ car.make }}
    </div>
  </div>
</template>

<script>
import inventoryService from "@/services/InventoryService";

export default {
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

<style>
</style>