<template>
  <div>
    <div v-if="isAdmin == 0">
      <h1>Veuillez vous connectez avec un compte admin</h1>
    </div>
    <div v-else>
      <Header />
      <h1>Admin Dashboard</h1>
      <div class="container">
        <table class="ui inverted teal table">
          <thead>
            <tr>
              <th>Article ID</th>
              <th>Titre de l'Article</th>
              <th>Url de l'Article</th>
              <th class="btnd">Action</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="article in laravelData.data" :key="article.id">
              <td>{{ article.id }}</td>
              <td>{{ article.title }}</td>
              <td><a href="article.url">{{ article.url }}</a></td>
              <td class="btnd"><button class="btn btn-danger" @click="deleteArticle(article.id)">Delete</button></td>
            </tr>
          </tbody>
        </table>

        <table class="ui inverted teal table">
          <thead>
            <tr>
              <th>Commentaire</th>
              <th>Article ID</th>
              <th class="btnd">Action</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="comment in comments" :key="comment.id">
              <td>{{ comment.comment }}</td>
              <td>{{ comment.article_id }}</td>
              <td class="btnd"><button class="btn btn-danger" @click="delcomment(comment.id)">Delete</button></td>
            </tr>
          </tbody>
        </table>

        <table class="ui inverted teal table">
          <thead>
            <tr>
              <th>Utilisateur</th>
              <th class="btnd">Action</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="user in users" :key="user.id">
              <td>{{ user.name }}</td>
              <td class="btnd"><button class="btn btn-danger" @click="deleteUser(user.id)">Delete</button></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</template>
<script>
import axios from "axios";
import Header from "../components/Header.vue";

export default {
  data() {
    return {
      isAdmin: "",
      articles: Array,
      laravelData: {},
    };
  },
  components: {
    Header,
  },
  methods: {
    getResults(page = 1) {
      axios.get("/api/articles?page=" + page).then((response) => {
        this.laravelData = response.data;
      });
    },
    delcomment(id) {
      axios.delete("/api/comments/" + id).then((response) => {
        console.log(response);
        if (response.status == 200) {
          this.$router.go();
        }
      });
    },
    deleteUser(id) {
      axios.delete("/api/users/" + id).then((response) => {
        console.log(response);
        if (response.status == 200) {
          this.$router.go();
        }
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
  },

  mounted() {
    axios
      .get("/api/articles")
      .then((response) => {
        this.articles = response.data;
        console.log(this.articles);
      })
      .catch((error) => {
        console.log(error);
      });
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
    this.isAdmin = JSON.parse(localStorage.getItem("auth")).is_admin;
    console.log(JSON.parse(localStorage.getItem("auth")).is_admin);
    this.getResults();
  },
};
</script>

<style>
.borderbottom {
  border-bottom: 1px solid black;
}

td {
  color: black;
}
.ui.table td.btnd {
    text-align: right;
}
.ui.table thead th.btnd{
  text-align: right;
}

.ui.inverted.table th {
  color: black !important;
}

h1 {
  text-align: center;
  background-color: #8f8c8c!important;
  border: 1px solid #000000;
}
.ui.inverted.teal.table {
    background-color: #d7cdcd!important;
    color: #fff!important;
    border: 1px solid #000000;
}
</style>