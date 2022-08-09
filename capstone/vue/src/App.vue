<template>
  <div id="app">
    <div id="nav">
      <router-link v-bind:to="{ name: 'home' }"
        ><img src="@/assets/MotorScape.png" /></router-link
      ><!--&nbsp;|&nbsp;-->
      <router-link
        v-bind:to="{ name: 'logout' }"
        v-if="$store.state.token != ''"
        >Logout</router-link
      >
    </div>
    <router-view />
  </div>
</template>

<style scoped>
img {
  width: 15%;
  height: 10%;
}
</style>