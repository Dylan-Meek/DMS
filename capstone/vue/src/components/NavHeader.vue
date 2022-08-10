<template>
  <div id="app">
    <div id="nav">
      <router-link v-bind:to="{ name: 'home' }"
        ><img id="homeLink" src="@/assets/MotorScape.png"
      /></router-link>

      <router-link
        v-bind:to="{ name: 'logout' }"
        v-if="$store.state.token != ''"
      >
        <img id="logout" src="@/assets/logout.png" />
      </router-link>
    </div>
    <router-view />
  </div>
</template>

<script>
</script>



<style scoped>
div#nav {
  display: flex;
  justify-content: space-between;
  height: 4rem;
  background: #162228;
  border-radius: 5px;
}

#homeLink {
  height: 100%;
  width: 100%;
  padding-left: 1rem;
}

#logout {
  height: 80%;
  width: 80%;
  padding-right: 1rem;
  color: #f9f7f7;
}

button {
  margin-right: 5%;
  color: #f9f7f7;
  background-color: #162228;
  border-radius: 5px;
  width: 10%;
  align-content: center;
  font-size: 0.9rem;
}
</style>