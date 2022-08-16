<template>
  <div id="login" class="text-center">
    <form class="form-signin" @submit.prevent="login">
      <h1 class="h3 mb-3 font-weight-normal">Please Sign In</h1>
      <div class="alert alert-danger" role="alert" v-if="invalidCredentials">
        Invalid username and password!
      </div>
      <div
        class="alert alert-success"
        role="alert"
        v-if="this.$route.query.registration"
      >
        Thank you for registering, please sign in.
      </div>
      <label for="username" class="sr-only">Username</label>
      <input
        type="text"
        id="username"
        class="form-control"
        placeholder=""
        v-model="user.username"
        required
        autofocus
      />
      <label for="password" class="sr-only">Password</label>
      <input
        type="password"
        id="password"
        class="form-control"
        placeholder=""
        v-model="user.password"
        required
      />

      <button type="submit">Sign in</button>
      <router-link :to="{ name: 'register' }" class="link"
        >Need an account?</router-link
      >
    </form>
  </div>
</template>

<script>
import authService from "../services/AuthService";

export default {
  components: {},
  name: "login",

  data() {
    return {
      user: {
        username: "",
        password: "",
      },
      invalidCredentials: false,
    };
  },
  methods: {
    login() {
      authService
        .login(this.user)
        .then((response) => {
          if (response.status == 200) {
            this.$store.commit("SET_AUTH_TOKEN", response.data.token);
            this.$store.commit("SET_USER", response.data.user);
            if (this.$store.state.user.authorities[0].name === "ROLE_USER") {
              this.$router.push("/garage");
            } else if (
              this.$store.state.user.authorities[0].name === "ROLE_ADMIN"
            ) {
              this.$router.push("/inventory");
            }
          }
        })
        .catch((error) => {
          const response = error.response;

          if (response.status === 401) {
            this.invalidCredentials = true;
          }
        });
    },
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Montserrat:ital@1&display=swap");

* {
  font-family: "Montserrat", "Helvetica";
}

form {
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
  background-color: rgba(22, 34, 40, 0.85);
  color: #f9f7f7;
  border-radius: 40px;
}

form > input {
  margin-bottom: 20px;
  margin-left: 20%;
  margin-right: 20%;
}

label {
  padding-bottom: 10px;
  margin-left: 20%;
  margin-right: 20%;
  color: #f9f7f7;
  font-weight: bold;
}

h1 {
  margin-left: auto;
  margin-right: auto;
  color: #f9f7f7;
}

.link {
  padding: 10px;
  margin-left: auto;
  margin-right: auto;
  color: #f9f7f7;
  font-size: 0.85rem;
  font-weight: bold;
}

button {
  margin-left: auto;
  margin-right: auto;
  color: #162228;
  background-color: #ffde32;
  font-weight: bold;
  border-radius: 5px;
  width: 30%;
  align-content: center;
  font-size: 0.9rem;
}

body {
  background-image: url("~@/assets/Background.jpg");
  background-size: cover;
  width: 100vw;
  height: 100vh;
  background-position: center;
}

[role="alert"] {
  margin-left: auto;
  margin-right: auto;
  padding-bottom: 10px;
}
</style>

