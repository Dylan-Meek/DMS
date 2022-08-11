<template>
  <div id="app">
    <div id="nav">
      <router-link v-bind:to="{ name: 'home' }"
        ><img id="homeLink" src="@/assets/MotorScape.png"
      /></router-link>
      <div id="nav-links">
        <!-- <router-link class="routerlink" v-bind:to="{ name: 'home' }"
          ><h2>Home</h2>
        </router-link> -->
        <router-link class="routerlink" v-bind:to="{ name: 'inventory' }"
          ><h2>Browse</h2>
        </router-link>
        <router-link class="routerlink" v-bind:to="{ name: 'customerGarage' }"
          ><h2>My Garage</h2>
        </router-link>
      </div>

      <router-link
        v-bind:to="{ name: 'logout' }"
        v-if="$store.state.token != ''"
      >
        <img id="logout" src="@/assets/logout.png" />
      </router-link>
      <router-link
        v-bind:to="{ name: 'login' }"
        v-if="$store.state.token === ''"
      >
        <img id="loginIcon" src="@/assets/login.png" />
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
  margin-left: 0%;
  margin-right: 0%;
  height: 4rem;
  background: #162228;
  border-radius: 5px;
}

.routerlink {
  display: block;
  color: #f9f7f7;
  text-decoration: none;
  padding-right: 2%;
}
div#nav-links {
  display: flex;
  flex-direction: row;
  justify-content: left;
  color: #f9f7f7;
  font-family: "Montserrat", "Helvetica";
  width: 75%;
}

#homeLink {
  height: 100%;
  width: 100%;
  padding-left: 1rem;
}

#logout {
  height: 50%;
  width: 50%;
  padding-right: 1rem;
  color: #f9f7f7;
  padding-top: 1rem;
}

#loginIcon {
  height: 50%;
  width: 50%;
  padding-right: 1rem;
  color: #f9f7f7;
  padding-top: 1rem;
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