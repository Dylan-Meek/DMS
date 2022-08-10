<template>
  <h1>Logout</h1>
</template>

<script>
export default {
  created() {
    this.$store.commit("LOGOUT");
    this.$router.push("/");
  },
};
</script>

<style scoped>
  @import url("https://fonts.googleapis.com/css2?family=Montserrat:ital@1&display=swap");

  *{
    font-family: 'Montserrat', 'Helvetica';
  }
</style>
