<template>
  <div class="post-container">
    <div class="post" v-for="article in laravelData.data" :key="article.id">
      <!-- <iframe class="miniature" :src="article.url" title="description"></iframe> -->
      <img
        :src="
          'https://api.apiflash.com/v1/urltoimage?access_key=d390211eeea84434a37198b588e2000e&url=' +
          article.url +
          '&format=jpeg&width=200&height=120&quality=50'
        "
        alt="PAYMENT API"
      />
      <!-- <img class="miniature" src="@/assets/roma.webp" alt="" style="height:180px;width:250px"> -->
      <div class="post-date">
        Posté le {{ article.created_at.substring(0, 10) }}
      </div>
      <div class="count-comment">
        Nombre de commentaires : {{ countCommentsByArticle(article) }}
      </div>
      <div class="post-categorie"><a :href= article.url >{{article.url}}</a></div>
      
      <div class="post-titre">{{ article.title.substring(0, 40) }}</div>
      <div class="description">{{ article.content.substring(0, 200) }}</div>
      <div class="profile">
        <div v-if="userid == article.user_id" class="deletebouton">
          <br />
          <button class="btn btn-danger" @click="deleteArticle(article.id)">
            X
          </button>
        </div>
        <img class="post-avatar" src="@/assets/avatar.png" alt="avatar" />
        <div class="nbr-userposts">25 commentaires</div>
        <div class="nbr-usercommented"></div>
        <router-link :to="{ name: 'PostDetail', params: { id: article.id } }">
          <div v-if="isloggedin">
            <button class="btn-comment">Je donne mon avis</button>
          </div>
        </router-link>
      </div>
    </div>
    <Pagination :data="laravelData" @pagination-change-page="getResults" />
  </div>
</template>

<script>
import axios from "axios";
import LaravelVuePagination from "laravel-vue-pagination";

export default {
  name: "Post",
  data() {
    return {
      articles: Array,
      isloggedin: JSON.parse(localStorage.getItem("auth")),
      laravelData: {},
      userid: "",
      q: "",
      comments: [],
      users: []
    };
  },
  created() {
    this.getArticles();
  },

  components: {
    Pagination: LaravelVuePagination,
  },

  methods: {
    async getArticles() {
      await axios
        .get("/api/articles")
        .then((response) => {
          this.articles = response.data;
          console.log(this.articles);
        })
        .catch((error) => {
          console.log(error);
        });
      this.userid = JSON.parse(localStorage.getItem("auth")).id;
    },
    getResults(page = 1) {
      axios.get("/api/articles?page=" + page).then((response) => {
        this.laravelData = response.data;
      });
    },
    deleteArticle(id) {
      axios.delete("/api/articles/" + id).then((response) => {
        console.log(response);
        if (response.status == 200) {
          this.$router.go();
        }
      });
    },
    countCommentsByArticle(article) {
      let count = 0;
      this.comments.forEach((comment) => {
        if (comment.article_id == article.id) {
          count++;
        }
      });
      return count;
    }
  },
  mounted() {
    // Fetch initial results
    this.getResults();
    axios
      .get("/api/comments/")
      .then((response) => {
        this.comments = response.data;
        console.log(response.data);
      })
      .catch((error) => {
        console.log(error);
      });
    axios
      .get("/api/users/")
      .then((response) => {
        this.users = response.data;
        console.log(response.data);
      })
      .catch((error) => {
        console.log(error);
      });
  },
};
</script>

<style scoped>
.deletebouton {
  padding-left: 120px;
}

.links {
  text-decoration: none;
  color: black;
}

.post {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  grid-template-rows: 5;
  background-color: rgb(228, 215, 228);
  box-shadow: 3px 0 2.4em black;
  height: 300px;
  width: 1000px;
  margin-top: 20px;
  margin-left: 50px;
  border-radius: 20px;
  border: 10px solid #ffffff;
}
.miniature {
  grid-column: 1;
  grid-row: 1 / span 3;
  border-radius: 10px;
  margin-left: 10px;
  margin-top: 10px;
  height: 200px;
  width: 250px;
}

.post-date {
  grid-column: 1;
  margin-left: 10px;
}
.count-comment {
  grid-column: 1;
  margin-left: 10px;
  color: #007dff;
  font-size: 18px;
  font-weight: bold;
}
.post-categorie {
  grid-column: 2;
  grid-row: 1;
  font-size: 18px;
  color: #007dff;
  font-weight: bold;
  margin-top: 10px;
}
.post-titre {
  grid-column: 2;
  grid-row: 2;
  font-size: 22px;
  font-weight: bold;
  margin-top: -25px;
}
.description {
  grid-column: 2;
  grid-row: 3;
  text-align: justify;
}

.profile {
  grid-column: 3;
  grid-row: 1 / span 3;
  position: relative;
  right: 0px;
  left: 150px;
  margin-right: 0px;
}
.post-avatar {
  margin-top: 10px;
  width: 30%;
}

.btn-comment {
  color: rgb(255, 255, 255);
  background-color: #7615c1;
  border-radius: 5px;
  margin-top: 20px;
  border: none;
  padding: 5px;
  width: 150px;
  height: 45px;
}
.nbr-userposts {
  margin-top: 10px;
  grid-row: 1 / span 3;
}
.nbr-usercommented {
  margin-bottom: px;
}
.btn-comment {
  margin-top: 0px;
}
.postfound {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  grid-template-rows: 5;
  background-color: rgb(228, 215, 228);
  box-shadow: 3px 0 2.4em black;
  height: 50px;
  width: 1000px;
}
</style>
