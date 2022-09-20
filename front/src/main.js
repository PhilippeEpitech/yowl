import axios from 'axios'
import { createApp, VueElement } from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import Vue from 'vue'

axios.defaults.withCredentials = true;
axios.defaults.baseURL = 'http://localhost:8000';


// beforeCreate() {
//     this.$store.commit('initializeAuth');
// }


createApp(App).use(store).use(router).mount('#app')