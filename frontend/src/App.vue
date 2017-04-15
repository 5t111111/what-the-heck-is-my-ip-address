<template>
  <div id="app">
    <app-nav></app-nav>
    <div class="main-container">
      <app-sidebar v-bind:sidebarItems="sidebarItems"></app-sidebar>
      <app-result v-bind:sidebarItems="sidebarItems"></app-result>
    </div>
    <footer>
      <p>
        &copy; What The Heck Is My IP Address? 2014 - 2017
      </p>
      <p>
        <a href="https://github.com/5t111111/what-the-heck-is-my-ip-address">GitHub</a>
      </p>
    </footer>
  </div>
</template>

<script>
import AppNav from './AppNav.vue'
import AppSidebar from './AppSidebar.vue'
import AppResult from './AppResult.vue'

export default {
  name: 'app',
  data () {
    return {
      sidebarItems: [
        { id: 'ip', name: 'IP Address', checked: false },
        { id: 'host', name: 'Remote Host', checked: false  },
        { id: 'ua', name: 'User Agent', checked: false  },
        { id: 'port', name: 'Port', checked: false  },
        { id: 'lang', name: 'Lang', checked: false  },
        { id: 'connection', name: 'Connection', checked: false  },
        { id: 'encoding', name: 'Encoding', checked: false  },
        { id: 'mime', name: 'MIME', checked: false  }
      ]
    }
  },
  components: {
    AppNav,
    AppSidebar,
    AppResult
  }
}
</script>

<style lang="scss">
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  color: #2c3e50;
}

.main-container {
  display: flex;
}

h1, h2 {
  font-weight: normal;
}

a {
  color: #42b983;
}

footer {
  font-size: .8rem;
  text-align: center;
}
</style>
