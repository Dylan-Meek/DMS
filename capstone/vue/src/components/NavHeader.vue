<template>
  <div id="app">
    <div id="nav">
      <div id="link-display">
        <router-link v-bind:to="{ name: 'home' }">
          <img id="homeLink" src="@/assets/MotorScape.png" />
        </router-link>
        <div v-if="$store.state.token !== ''">
          <div
            id="customer-links"
            v-if="$store.state.user.authorities[0].name === 'ROLE_USER'"
          >
            <router-link class="navLink" v-bind:to="{ name: 'inventory' }"
              ><h2>Browse</h2>
            </router-link>

            <router-link class="navLink" v-bind:to="{ name: 'customerGarage' }"
              ><h2>My Garage</h2>
            </router-link>
          </div>
        </div>

        <div v-if="$store.state.token !== ''">
          <div
            id="dealer-links"
            v-if="$store.state.user.authorities[0].name === 'ROLE_ADMIN'"
          >
            <router-link class="navLink" v-bind:to="{ name: 'inventory' }"
              ><h2>My Lot</h2>
            </router-link>

            <router-link class="navLink" v-bind:to="{ name: 'customers' }"
              ><h2>Customer List</h2>
            </router-link>
          </div>
        </div>
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
* {
  font-family: "Montserrat", "Helvetica";
}
div#nav {
  display: flex;
  justify-content: space-between;

  height: 4rem;
  background: #162228;
  border-radius: 5px;
}

div#link-display {
  display: flex;
  justify-items: space-between;
  width: 750px;
}

div#customer-links {
  display: flex;
  flex-direction: row;
  justify-content: center;
  color: #f9f7f7;
  width: 100%;
  margin: 0;
}

div#dealer-links {
  display: flex;
  flex-direction: row;
  justify-content: center;
  color: #f9f7f7;
  width: 100%;
  height: 100%;
  margin: 0;
}

a.navLink {
  display: flex;
  justify-content: right;
  color: #f9f7f7;
  text-decoration: none;

  vertical-align: center;
  height: 100%;

  margin: 0;
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

h2 {
  height: 100%;
  width: 100%;
  padding-left: 5rem;
}
</style>