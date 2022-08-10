<template>
  <div id="app">
    <div id="nav">
      <router-link v-bind:to="{ name: 'home' }"
        ><img src="@/assets/MotorScape.png" /></router-link
      ><!--&nbsp;|&nbsp;-->
      <router-link
        v-bind:to="{ name: 'logout' }"
        v-if="$store.state.token != ''"
        ><button type="submit">Logout</button>
      </router-link>
    </div>
    <router-view />
  </div>
</template>
<style scoped>
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
</style>