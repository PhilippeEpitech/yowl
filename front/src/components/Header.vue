<template>
  <div class="headerpage">
    <div class="ui huge menu">
      <router-link to="/">
        <a class="item active">Home</a>
      </router-link>
      <router-link :to="{ name: 'about' }" v-if="isloggedin && isAdmin == 1">
        <a class="item">Admin Dashboard</a>
      </router-link>
      <div class="right menu">
        <div class="ui compact menu">
          <!-- <div class="ui simple dropdown item">
            Categorie
            <i class="dropdown icon"></i>
            <div class="menu">
              <div class="item">Jeux/vidéo</div>
              <div class="item">Cuisine</div>
              <div class="item">festival</div>
            </div>
          </div> -->
          <router-link to="/login">
            <div class="item" v-if="!isloggedin">
              <div class="ui black button">Log In</div>
            </div>
            <div class="item" v-if="isloggedin">
              <div class="ui black button" @click="logout()">Log Out</div>
            </div>
          </router-link>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import BtnNewpost from "./BtnNewpost.vue";
export default {
  data() {
    return {
      isloggedin: localStorage.getItem("auth") ? JSON.parse(localStorage.getItem("auth")) : false,
      isAdmin: localStorage.getItem("auth") ? JSON.parse(localStorage.getItem("auth")).is_admin : false,
    };
  },
  methods: {
    logout() {
      localStorage.clear();
      // isloggedin = false;
      // isAdmin = false;
      window.location.href = "http://localhost:8000/logout";
    },
  },
  components: { BtnNewpost },
};
</script>

<style>
.headerbas {
  display: flex;
  color: white;
}

.slogan {
  /* padding-left: 18%;
  padding-right: 28%;  */
  text-align: cleft;
  display: block;
  color: white;
  font-size: 25px;
  /* margin-top : 20px;
  margin-left : 20px; */
  padding: 20px;
}

.ui.menu {
  background: #7615c1;
}

.logogauche {
  margin-left: 50px;
  width: 20%;
  height: 20%;
}
</style>