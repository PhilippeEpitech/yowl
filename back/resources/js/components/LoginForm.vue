<template>
  <div>
    <form @submit.prevent="handleLogin">
      <div class="form-group">
        <input type="text" v-model="form.email" class="form-control" />
        <span class="text-danger" v-if="errors.email">{{ errors.email[0] }}</span>
      </div>
      <div class="form-group">
        <input type="text" v-model="form.password" class="form-control" />
        <span class="text-danger" v-if="errors.password">{{ errors.password[0] }}</span>
      </div>
      <button type="submit" class="btn btn-primary">Se Connecter</button>
    </form>
  </div>
</template>

<script>
export default {
  data() {
    return {
      form: { email: null, password: null },
      errors: {},
    };
  },
  methods: {
    async handleLogin() {
      try {
        await axios.get("/sanctum/csrf-cookie");
        await axios.post("/login", this.form);
        window.location = '/home';
      } catch (error) {
        this.errors = error.response.data.errors;
      }
    },
  },
};
</script>
