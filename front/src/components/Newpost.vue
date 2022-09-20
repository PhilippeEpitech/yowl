<template>
  <div class="blog-form">
    <div class="logo"><img src="@/assets/owl1.png" class="owl" /></div>
    <div class="cube"></div>
    <div class="cube"></div>
    <div class="cube"></div>
    <div class="cube"></div>
    <!-- <div class="cube"></div> -->
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="form-section">
            <div class="form-inner">
              <div class="details">
                <img src="@/assets/yowl_big.png" class="logogauche" />
                <h3>Donnez votre avis !</h3>
                <h4>
                  Donnez un lien à Yowly et ajoutez y un titre, donnez votre
                  avis sur ce lien, Yowly se charge de le partager avec le monde
                  entier !
                </h4>
                <div class="alert alert-danger mt-4" v-if="errors.length">
                  <ul class="mb-0">
                    <li v-for="(error, index) in errors" :key="index">
                      {{ error }}
                    </li>
                  </ul>
                </div>
                <form @submit.prevent="saveArticle" novalidate>
                  <div class="form-group">
                    <input
                      type="text"
                      class="form-control"
                      placeholder="Adresse du site..."
                      v-model="article.url"
                    />

                    <div class="row">
                      <div class="col-lg-6 col-md-6 col-12">
                        <div class="form-group">
                          <!-- <input type="text" class="form-control" placeholder="Keywords"> -->
                          <input
                            type="text"
                            class="form-control"
                            placeholder="Titre de mon avis"
                            v-model="article.title"
                          />
                        </div>
                        <div class="form-group"></div>
                      </div>
                      <div class="col-lg-6 col-md-6 col-12">
                        <div class="form-group">
                          <!-- <select class="form-control">
                            <option value="Select Categories">
                              Categories
                            </option>
                            <option value="Mobile">Mobile</option>
                            <option value="Watch">Watch</option>
                            <option value="Laptop">Laptop</option>
                            <option value="Computer">Computer</option>
                          </select> -->
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <textarea
                        rows="2"
                        placeholder="Mon avis ..."
                        class="form-control"
                        v-model="article.content"
                      ></textarea>
                    </div>
                  </div>

                  <div class="form-group">
                    <!-- <textarea rows="2" placeholder="Editor" class="form-control"></textarea> -->
                  </div>

                  <div class="form-group">
                    <button
                      type="submit"
                      class="btn btn-lg btn-primary btn-theme"
                    >
                      <span>Envoie mon avis Yowly !</span>
                    </button>
                  </div>
                </form>
                <!-- <div class="clearfix">tytyty</div> -->
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "Newpost",
  data() {
    return {
      article: {},
      title: "",
      content: "",
      url: "",
      errors: [],
    };
  },
  methods: {
    saveArticle() {
      this.errors = [];
      if (!this.article.title) {
        this.errors.push("Title is required");
      }
      if (!this.article.content) {
        this.errors.push("Content is required");
      }
      if (!this.article.url) {
        this.errors.push("Url is required");
      }

      if (!this.errors.length) {
        let formData = new FormData();
        formData.append("title", this.article.title);
        formData.append("content", this.article.content);
        formData.append("url", this.article.url);
        formData.append("user_id", JSON.parse(localStorage.getItem("auth")).id);

        axios.post("/api/articles", formData).then((response) => {
          console.log(response);
          if (response.status == 200) {
            // alert("Article crée avec succés");
            this.$router.push("/");
          }
        });
      }
    },
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Rubik:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,400;1,500;1,600;1,700&display=swap");
/* main div  */
.logo {
  width: 8vw;
  height: 8vh;
}

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
  background: linear-gradient(132deg, #fc415a, #591bc5, #212335);
  background-size: 400% 400%;
  animation: Gradient 15s ease infinite;
  position: relative;
  height: 100%;
  width: 100%;
  overflow: hidden;
  top: 0;
  text-align: center;
  bottom: 0;
  opacity: 1;
  z-index: 999;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 30px 0;
  display: grid;
}
/* blog form bg animation */
@keyframes Gradient {
  0% {
    background-position: 0% 50%;
  }
  50% {
    background-position: 100% 50%;
  }
  100% {
    background-position: 0% 50%;
  }
}

.blog-form .cube {
  position: absolute;
  top: 80vh;
  left: 45vw;
  width: 10px;
  height: 10px;
  border: solid 1px #d7d4e4;
  transform-origin: top left;
  transform: scale(0) rotate(0deg) translate(-50%, -50%);
  animation: cube 12s ease-in forwards infinite;
}

.blog-form .cube:nth-child(2n) {
  border-color: #fff;
}

.blog-form .cube:nth-child(2) {
  animation-delay: 2s;
  left: 25vw;
  top: 40vh;
}

.blog-form .cube:nth-child(3) {
  animation-delay: 4s;
  left: 75vw;
  top: 50vh;
}

.blog-form .cube:nth-child(4) {
  animation-delay: 6s;
  left: 90vw;
  top: 10vh;
}

.blog-form .cube:nth-child(5) {
  animation-delay: 8s;
  left: 10vw;
  top: 85vh;
}

.blog-form .cube:nth-child(6) {
  animation-delay: 10s;
  left: 50vw;
  top: 10vh;
}

/* cubes animation background*/

@keyframes cube {
  from {
    transform: scale(0) rotate(0deg) translate(-50%, -50%);
    opacity: 1;
  }
  to {
    transform: scale(20) rotate(960deg) translate(-50%, -50%);
    opacity: 0;
  }
}
/*form section */
.blog-form .form-section {
  max-width: 980px;
  margin: 0 auto;
}

/* form details */
.blog-form .form-section .details {
  padding: 20px;
  background: #fff;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  margin-bottom: 30px;
  position: relative;
  text-align: center;
  overflow: hidden;
  backdrop-filter: blur(8.2px);
  background: rgba(255, 255, 255, 0.281);
  backdrop-filter: blur(8.2px);
  -webkit-backdrop-filter: blur(8.2px);
  border: solid rgba(255, 255, 255, 0.245) 12px;
}
.blog-form .details::before {
  content: "";
  width: 50px;
  height: 200px;
  position: absolute;
  top: 30px;
  right: 0;
  /* background: url(./img/img-54.png) top left repeat; */
  background-size: auto;
  background-size: cover;
}
.blog-form .details::after {
  content: "";
  width: 50px;
  height: 100px;
  position: absolute;
  bottom: 30px;
  left: 0;
  /* background: url(./img/img-53.png) top left repeat; */
  background-size: auto;
  background-size: cover;
}
/* heading */
.blog-form .form-section h3 {
  margin: 0 0 25px;
  font-size: 25px;
  font-weight: 500;
  color: #ffffff;
}

/* inputs css style */
.blog-form .form-section .form-group {
  margin-bottom: 30px;
}

.blog-form .form-section .form-control {
  font-size: 16px;
  outline: none;
  background: transparent !important;
  color: #000000;
  font-weight: 500;
  border-radius: 0;
  padding: 12px 10px;
  border: none;
  border-bottom: solid 2px #bdbdbd;
  font-family: "Rubik", sans-serif;
}
.blog-form .form-section .form-control:focus {
  box-shadow: inset 1px 1px 10px rgba(1, 1, 1, 0.5);
}

.blog-form .form-section .form-control::placeholder {
  color: rgba(0, 0, 0, 0.542);
  font-family: "Rubik", sans-serif;
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
}
.blog-form .form-section button:focus {
  outline: none;
  outline: 0 auto -webkit-focus-ring-color;
}
.blog-form .btn-theme:hover {
  color: #fff;
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

.blog-form .btn-lg {
  padding: 0 50px;
  line-height: 50px;
}

.blog-form .btn {
  box-shadow: none !important;
}

.blog-form .btn-md {
  padding: 0 45px;
  line-height: 50px;
}

.blog-form .btn-primary {
  background: #0984db;
}

.blog-form .btn-primary:before {
  background: linear-gradient(to left, #f45162, #c96ddd, #17c0e9);
}

@media (max-width: 500px) {
  .blog-form .form-section .details {
    padding: 40px;
  }
  .blog-form .details::after {
    height: 94px;
    width: 50px;
    bottom: 39px;
    left: -24px;
  }
  .blog-form .details::before {
    height: 150px;
    width: 30px;
  }
  .blog-form .btn-lg {
    padding: 0 10px;
  }
}
@media (max-width: 300px) {
  .blog-form .form-section .details {
    padding: 20px;
  }
  .blog-form .details::after {
    height: 126px;
    width: 65px;
    bottom: -13px;
    left: -48px;
  }
}
</style>