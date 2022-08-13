<template>
  <div class="customer">
    <div id="customer" class="flex-customer">
      <h2>
        {{
          user.firstName + " " + user.lastName + " " + "Email: " + user.email
        }}
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
#customer {
  padding-top: 2%;
  padding-bottom: 1%;
  font-size: 16px;
  font-family: "Montserrat", sans-serif;
  display: flex;
  flex-direction: column;
  justify-content: center;
  margin-left: 35%;
  margin-right: 35%;
  margin-top: 5%;
  background-color: rgba(22, 34, 40, 0.4);
  color: #f9f7f7;
  border-radius: 40px;
}
</style>