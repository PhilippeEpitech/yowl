<template>
  <router-view />
</template>

<style>
body {
  background-image: url(./assets/background.jpg);
  background-size: cover;
}
</style>

<script>
export default {
  setup() {},
  beforeCreate() {
    this.$store.commit("initializeAuth");
  },
};
</script>