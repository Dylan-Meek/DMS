<template>
  <div>
    <div class="customers">
      <customer-card
        v-for="user in customers"
        v-bind:key="user.username"
        :user="user"
      ></customer-card>
    </div>
  </div>
</template>

<script>
import CustomerCard from "@/components/CustomerCard.vue";
import dealerService from "@/services/DealerService.vue";

export default {
  components: {
    CustomerCard,
  },
  data() {
    return {
      customers: [],
    };
  },
  created() {
    dealerService.getCustomers().then((response) => {
      this.customers = response.data;
    });
  },
};
</script>

<style scoped>
</style>