<template>
  <div>
    <Header />
    
    <!-- <div v-if="isloggedin" class="blog-form">
      <router-link :to="{ name: 'Newpost' }">
        <button type="submit" class="btn btn-lg btn-primary btn-theme">
          <span>Créer un avis ...</span>
        </button>
      </router-link>
    </div> -->
    <div class="headerbas">
      <img src="@/assets/yowl_big.png" class="logogauche" />
      <!---------------------------
            Bouton new Post
      ---------------------------->

      <BtnNewpost />
      <!-- ----------------------->

      <!-- <div class="logodroite">
        <img src="" alt="" />
      </div> -->
    </div>
    <div class="slogan">Donnez votre avis sur TOUT ... ou rien !</div>
    
    <Searchbar />
    <div class="homecenter">
      <Post />
      <div class="smallcards">
        <img class="owl2" src="../assets/owl2.png" alt="" />
        <div class="banderole">
          <p>Les plus commentés</p>
        </div>
        <Smallcards />
        <Smallcards2 />
      </div>
      <div class="post"></div>
    </div>
  </div>
</template>

<script>
import Post from "../components/Post.vue";
import Searchbar from "../components/Searchbar.vue";
import Header from "../components/Header.vue";
import BtnNewpost from "../components/BtnNewpost.vue";
import Smallcards from "../components/Smallcards.vue";
import Smallcards2 from "../components/Smallcards2.vue";

export default {
  components: {
    Post,
    Searchbar,
    Header,
    BtnNewpost,
    Smallcards,
    Smallcards2,
  },
  data() {
    return {
      isloggedin: JSON.parse(localStorage.getItem("auth")),
    };
  },
};
</script>
<style scoped>
.owl2 {
  margin-left: 170px;
  width: 100px;
}
@import url("https://fonts.googleapis.com/css2?family=Rubik:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,400;1,500;1,600;1,700&display=swap");
/* main div  */
body {
  font-family: "Rubik", sans-serif;
}

.h4 {
  color: white;
  font-family: "Rubik", sans-serif;
}

.logogauche {
  width: 20%;
  height: auto;
  grid-row: 1;
  grid-column: 1;
  margin-left: 0%;
  margin-top: 0%;
}
.owl {
  width: 100%;
  height: auto;
  grid-row: 1;
  grid-column: 2;
}
.blog-form {
  justify-content: center;
  /* align-items: center;
  padding: 30px 0; */
  display: grid;
}

/* button */
.blog-form .btn-theme {
  position: relative;
  display: inline-block;
  width: 100%;
  color: rgb(255, 255, 255);
  border: none;
  overflow: hidden;
  overflow: hidden;
  text-transform: capitalize;
  display: inline-block;
  transition: all 0.3s ease;
  -moz-transition: all 0.3s ease;
  -webkit-transition: all 0.3s ease;
  -ms-transition: all 0.3s ease;
  -o-transition: all 0.3s ease;
  cursor: pointer;
  font-size: 17px;
  font-weight: 500;
  border-radius: 3px;
  margin-bottom: 20px;
}
.homecenter {
  display: flex;
}
.smallcards {
  display: block;
  margin-left: 20px;
  margin-top: 20px;
}
.banderole {
  color: rgb(255, 255, 255);
  background-color: #158bc1;
  border-radius: 5px;
  margin-top: -30px;
  margin-bottom: 20px;
  text-align: left;
  border: none;
  padding-top: 10px;
  padding-left: 20px;
  width: 300px;
  height: 45px;
  font-size: 1.3rem;
}
</style>