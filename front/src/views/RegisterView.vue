<template>
  <body>
    <div class="box">
      <form class="register-form" @submit.prevent="handleRegister">
        <h1>Register</h1>
        <p>Name</p>
        <input type="text" v-model="form.name" placeholder="Holy" required />
        <p>Email</p>
        <input
          type="text"
          v-model="form.email"
          placeholder="Holy@gmail.fr"
          required
        />
        <p>Password</p>
        <input
          type="password"
          v-model="form.password"
          placeholder="********"
          required
        />
        <!-- <p>Confirm Password</p>
        <input
          type="password"
          v-model="form.password"
          placeholder="********"
          required
        /> -->
        <button type="submit" name="Register">S'enregistrer</button>
      </form>
    </div>
  </body>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      form: { name: null, email: null, password: null },
      errors: {},
    };
  },
  methods: {
    async handleRegister() {
      try {
        await axios.get("/sanctum/csrf-cookie");
        await axios.post("/register", this.form).then(response => {
            console.log(response);
        });
        this.$router.push("/");
      } catch (error) {
        this.errors = error.response.data;
      }
    },
  },
  mounted() {},
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css?family=Raleway&display=swap");

* {
  box-sizing: border-box;
}

body {
  margin: 0;
  padding: 0;
  font-family: "Raleway", sans-serif;
}

.box {
  display: flex;
  background-color: white;
  align-items: center;
  justify-content: center;
  background-color: #21d4fd;
  background-image: linear-gradient(19deg, #21d4fd 0%, #b721ff 100%);
  height: 100vh;
}

.register-form {
  min-width: 250px;
  max-width: 400px;
  border-radius: 24px;
  padding: 15px;
  background-color: white;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}

.register-form h1 {
  text-align: center;
  font-size: 2.5rem;
  margin-top: 35px;
}

.register-form p {
  text-align: left;
  font-size: 1.1rem;
  margin-top: 15px;
}

.register-form input[type="text"] {
  margin-top: 30px;
}

.register-form input[type="password"] {
  margin-top: 10px;
}

input {
  outline: none;
}

.links {
  margin-top: 10px;
  display: flex;
  flex-wrap: wrap;
  flex-direction: row;
}

.links > a:first-of-type {
  margin-right: 5px;
}

.links > a {
  background-color: #e0e0e0;
  border-radius: 24px;
  font-weight: 400;
  color: black;
  line-height: 12px;
  flex: 1;
  text-align: center;
  padding: 10px;
  text-decoration: none;
  font-family: "Raleway";
  transition: 0.25s;
}

.links > a:hover {
  opacity: 0.6;
}

.register-form button[type="submit"] {
  background-color: #e0e0e0;
  background-image: linear-gradient(19deg, #21d4fd 0%, #b721ff 100%);
  width: 100%;
  color: white;
  border: none;
  margin-top: 35px;
  cursor: pointer;
  padding: 10px;
  font-family: "Raleway", sans-seriff;
  font-size: 1.3rem;
  font-weight: bold;
  border-radius: 24px;
  transition: 0.25s;
}

.register-form button[type="submit"]:hover {
  opacity: 0.8;
}

.register-form input[type="text"]:focus,
.register-form input[type="password"]:focus {
  border: 2px #21d4fd solid;
}

.register-form input[type="text"],
.register-form input[type="password"] {
  width: 100%;
  border: none;
  border-radius: 24px;
  font-size: 1rem;
  font-family: "Raleway", sans-seriff;
  background-color: gainsboro;
  padding: 15px;
}
</style>