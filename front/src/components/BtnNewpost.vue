<template>
  <div v-if="isloggedin" class="blog-form">
    <router-link :to="{ name: 'Newpost' }">
      <button type="submit" class="btn btn-lg btn-primary btn-theme">
        <span>Créer un avis ...</span>
      </button>
    </router-link>
  </div>
</template>

<script>
export default {
  data() {
    return {
      isloggedin: JSON.parse(localStorage.getItem("auth")),
    };
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Rubik:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,400;1,500;1,600;1,700&display=swap");
/* main div  */
body {
  font-family: "Rubik", sans-serif;
}

.h4 {
  color: white;
  font-family: "Rubik", sans-serif;
}

/* .logogauche {
  width: 20%;
  height: auto;
  grid-row: 1;
  grid-column: 1;
  margin-left: 0%;
  margin-top: 0%;
} */
/* .owl {
  width: 100%;
  height: auto;
  grid-row: 1;
  grid-column: 2;
} */
.blog-form {
  justify-content: center;
  /* align-items: center; */
  padding: 0px;
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
  font-size: 40px;
  text-shadow: 4px 4px 5px rgba(0, 0, 0, 0.66);
  font-weight: 500;
  border-radius: 3px;
  margin-bottom: 20px;
}

.blog-form .btn-theme:hover::before {
  left: 0%;
  -webkit-transform: scale(1, 1);
  transform: scale(1, 1);
}

.blog-form .btn-theme:before {
  position: absolute;
  content: "";
  left: 96%;
  top: 0px;
  width: 100%;
  height: 100%;
  z-index: 1;
  opacity: 1;
  -webkit-transition: all 0.4s;
  -moz-transition: all 0.4s;
  -o-transition: all 0.4s;
  transition: all 0.4s;
  transform: skewX(-25deg);
}

.blog-form .btn-theme span {
  position: relative;
  z-index: 1;
}

.blog-form .btn {
  box-shadow: none !important;
}

.blog-form .btn-primary {
  background: #9650b8;
  width: 1000px;
  height: 80px;
  margin-top: 30px;
  margin-left: 50px;
}

.blog-form .btn-primary:before {
  background: linear-gradient(to left, #f45162, #c96ddd, #a5e1f0);
}
</style>