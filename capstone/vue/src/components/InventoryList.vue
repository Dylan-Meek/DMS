<template>
  <div>
    <h1>Inventory</h1>
    <div class="inventory">
      <div class="car" v-for="car in cars" v-bind:key="car.vin">
        {{ car.year }}
        {{ car.make }}
        {{ car.model }}
        <img :src="`${car.photo}`" />
      </div>
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