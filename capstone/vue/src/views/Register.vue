<template>
  <div id="register" class="text-center">
    <form class="form-register" @submit.prevent="register">
      <h1 class="h3 mb-3 font-weight-normal">Create Account</h1>
      <div class="alert alert-danger" role="alert" v-if="registrationErrors">
        {{ registrationErrorMsg }}
      </div>
      <label for="username" class="sr-only">Username</label>
      <input
        type="text"
        id="username"
        class="form-control"
        placeholder="Username"
        v-model="user.username"
        required
        autofocus
      />
      <label for="password" class="sr-only">Password</label>
      <input
        type="password"
        id="password"
        class="form-control"
        placeholder="Password"
        v-model="user.password"
        required
      />
      <input
        type="password"
        id="confirmPassword"
        class="form-control"
        placeholder="Confirm Password"
        v-model="user.confirmPassword"
        required
      />
      <button class="btn btn-lg btn-primary btn-block" type="submit">
        Create Account
      </button>
      <router-link :to="{ name: 'login' }" class="link"
        >Have an account?</router-link
      >
    </form>
  </div>
</template>

<script>
import authService from "../services/AuthService";

export default {
  components: {},
  name: "register",
  data() {
    return {
      user: {
        username: "",
        password: "",
        confirmPassword: "",
        role: "user",
      },
      registrationErrors: false,
      registrationErrorMsg: "There were problems registering this user.",
    };
  },
  methods: {
    register() {
      if (this.user.password != this.user.confirmPassword) {
        this.registrationErrors = true;
        this.registrationErrorMsg = "Password & Confirm Password do not match.";
      } else {
        authService
          .register(this.user)
          .then((response) => {
            if (response.status == 201) {
              this.$router.push({
                path: "/login",
                query: { registration: "success" },
              });
            }
          })
          .catch((error) => {
            const response = error.response;
            this.registrationErrors = true;
            if (response.status === 400) {
              this.registrationErrorMsg = "Bad Request: Validation Errors";
            }
          });
      }
    },
    clearErrors() {
      this.registrationErrors = false;
      this.registrationErrorMsg = "There were problems registering this user.";
    },
  },
};
</script>

<style>
  @import url("https://fonts.googleapis.com/css2?family=Montserrat:ital@1&display=swap");

  *{
    font-family: 'Montserrat', 'Helvetica';
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
  background-color: rgba(22, 34, 40, 0.4);
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
  font-size: 0.7rem;
}

button {
  margin-left: auto;
  margin-right: auto;
  color: #162228;
  background-color: #ffde32;
  border-radius: 5px;
  width: 40%;
  align-content: center;
  font-size: 0.9rem;
}

body {
  background-image: url("/62f153a316532.jpg");
  background-size: cover;
  width: 100vw;
  height: 100vh;
  background-position: center;
  background-repeat: no-repeat;
  background-attachment: fixed;
}

[role="alert"] {
  margin-left: auto;
  margin-right: auto;
  padding-bottom: 10px;
}
</style>