<template>
  <div class="home">
    <div id="homeCenter">
      <img id="MainLogo" src="@/assets/MotorScape.png" alt="" />
      <router-link :to="{ name: 'login' }"
        ><button id="LoginButton">Login</button></router-link
      >
    </div>
  </div>
</template>

<script>
export default {
  name: "home",
};
</script>

<style scoped>
* {
  font-family: "Montserrat", "Helvetica";
}
.home {
  align-content: center;
  justify-content: center;
  font-weight: bold;
  vertical-align: center;
  margin-top: 10%;
}

button {
  color: #162228;
  background-color: #ffde32;
  border-radius: 5px;
  width: 120%;
  align-content: center;
  font-size: 0.9rem;
  margin-top: 20%;
}

#homeCenter {
  display: flex;
  flex-direction: column;
  align-items: center;
  line-height: 0%;
  margin-left: 30%;
  margin-right: 30%;
  margin-bottom: 2%;
  border-radius: 10px;
}

h1 {
  color: #f9f7f7;
  font-size: 4rem;
}

#MainLogo {
  width: 100%;
  width: 100%;
}
</style>
