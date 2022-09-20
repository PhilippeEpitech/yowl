import { createStore } from 'vuex'

export default createStore({
  state: {
    authenticated: false,
    user: null
  },
  getters: {
  },
  mutations: {
    setAuth(state, user) {
      localStorage.setItem('auth', JSON.stringify(user));
      state.authenticated = true;
      state.user = user;
    },
    initializeAuth(state) {
      //Initialize Auth
      if (localStorage.getItem('auth')) {
        state.authenticated = true;
        state.user = JSON.parse(localStorage.getItem('auth'));
      }
    }
  },
  actions: {
  },
  modules: {
  }
})