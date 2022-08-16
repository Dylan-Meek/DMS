<template>
  <nav-header></nav-header>
</template>

<script>
import NavHeader from "@/components/NavHeader";

export default {
  setup() {},
  components: {
    NavHeader,
  },
};
</script>

<style>
/* * {
  font-family: "Montserrat", "Helvetica";
} */
img {
  width: 15%;
  height: 10%;
}
button {
  margin-right: 100%;
  color: #f9f7f7;
  background-color: #162228;
  border-radius: 5px;
  width: 10%;
  align-content: center;
  font-size: 0.9rem;
}

body {
  background-image: url("~@/assets/Background.jpg");
  background-size: cover;
  overflow-x: hidden;
  background-position: 50% 20%;
  background-repeat: no-repeat;
  background-attachment: fixed;
}
</style>