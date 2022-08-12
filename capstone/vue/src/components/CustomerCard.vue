<template>
  <div class="customer">
    <div class="flex-customer">
      <h2>
        {{ user.firstName + " " + user.lastName + "Email: " + user.email }}
      </h2>
      <button>View Garage</button>
    </div>
  </div>
</template>

<script>
export default {
  name: "customer",
  props: ["user"],
};
</script>

<style scoped>
</style>