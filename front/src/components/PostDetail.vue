<template>
  <main>
    <Header />
    <div class="post-container">
      <div class="post" v-if="article.id == this.$route.params.id">
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
        <div class="count-comment">Nombre de commentaires : {{ countCommentsByArticle(article) }}</div>
        <!-- <a class="post-categorie">Ammeublement</a> -->
        <div class="post-titre">{{ article.title }}</div>
        <div class="description">{{ article.content }}</div>
        <div class="profile">
          <img class="post-avatar" src="@/assets/avatar.png" alt="avatar" />
          <div class="nbr-userposts">26 avis créés</div>
          <div class="nbr-usercommented">235 avis commentés</div>
        </div>
      </div>
    </div>

    <div v-for="comment in comments" :key="comment.id">
      <div v-if="comment.article_id == this.$route.params.id">
        <div v-for="user in this.users" :key="user.id">
          <div v-if="user.id == comment.user_id">
            <ul class="comments">
              <li>
                <div v-if="userid == comment.user_id" class="boutondelete">
                  <button
                    class="size btn btn-danger"
                    v-on:click="delcomment(comment.id)"
                  >
                    X
                  </button>
                </div>
                <br />

                <span class="date">{{
                  comment.created_at.substring(0, 10)
                }}</span>
                <div class="user">
                  <strong> {{ user.name }}</strong>
                </div>
                <p v-html="comment.comment"></p>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <form @submit.prevent="saveComment" novalidate>
      <div class="form-group">
        <button type="submit" class="btn-commenter">
          <span>Envoie mon commentaire sur Yowl !</span>
        </button>
      </div>
      <div class="form-group">
        <input
          type="text"
          class="form-control"
          placeholder="Entrez votre commentaire"
          v-model="form.comment"
        />
      </div>
    </form>
  </main>
</template>
<script>
import axios from "axios";
import Header from "../components/Header.vue";

export default {
  components: {
    Header,
  },
  methods: {
    saveComment() {
      let formData = new FormData();
      formData.append("comment", this.form.comment);
      formData.append("article_id", this.article.id);
      formData.append("user_id", JSON.parse(localStorage.getItem("auth")).id);

      axios.post("/api/comments", formData).then((response) => {
        console.log(response);
        if (response.status == 200) {
          this.$router.go();
        }
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
    countCommentsByArticle(article) {
      let count = 0;
      this.comments.forEach((comment) => {
        if (comment.article_id == article.id) {
          count++;
        }
      });
      return count;
    },
  },
  data() {
    return {
      form: {},
      comment: "",
      article: [],
      comments: [],
      users: [],
      userid: JSON.parse(localStorage.getItem("auth")).id,
    };
  },
  mounted() {
    axios
      .get("/api/articles/" + this.$route.params.id)
      .then((response) => {
        this.article = response.data;
        console.log(this.article);
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
    console.log(JSON.parse(localStorage.getItem("auth")).id);
  },
};
</script>

<style scoped>
.boutondelete {
  float: right;
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
  height: 500px;
  width: 1000px;
  margin: 30px auto;
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

.btn-commenter {
  color: rgb(255, 255, 255);
  background-color: #7615c1;
  border: 10px solid #ffffff;
  border-radius: 5px;
  margin-left: 20px;
  margin-bottom: 20px;
  border: none;
  padding: 5px;
  width: 200px;
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

.comments {
  width: 70%;
  margin: 30px auto;
}

.comments li {
  padding: 15px 15px 25px;
  border-bottom: 1px solid #252525;
  background-color: rgb(228, 215, 228);
  border: 10px solid #ffffff;
  border-radius: 20px;
  position: relative;
  overflow: hidden;
}

.comments li .date {
  float: right;
  line-height: 50px;
  font-size: 12px;
  font-style: italic;
}

.comments li .user {
  position: relative;
  display: inline-block;
  max-width: 70%;
}

.comments li .user:hover {
  z-index: 10;
}

.comments li .text {
  display: block;
  line-height: 1.2;
  padding: 0 69px;
  font-size: 100%;
}

.comments .user .name {
  color: #aeacac;
  margin: 0;
  margin-bottom: 10px;
  padding: 0;
  border: 0;
  font-size: 100%;
  vertical-align: baseline;
  line-height: 50px;
  font-weight: 600;
}

.form-control {
  display: block;
  width: 100%;
  padding: 15px 15px 25px;
  font-size: 1rem;
  font-weight: 400;
  line-height: 1.5;
  color: #212529;
  border-bottom: 1px solid #252525;
  background-color: rgb(228, 215, 228);
  border: 10px solid #ffffff;
  border-radius: 20px;
  position: relative;
  overflow: hidden;
}
</style>
