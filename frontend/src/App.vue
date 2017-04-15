<template>
  <div id="app">
    <app-nav></app-nav>
    <app-sidebar v-bind:sidebarItems="sidebarItems"></app-sidebar>
    <app-result v-bind:sidebarItems="sidebarItems"></app-result>
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
        { id: 'port', name: 'Port', checked: false  }
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

h1, h2 {
  font-weight: normal;
}

a {
  color: #42b983;
}
</style>
