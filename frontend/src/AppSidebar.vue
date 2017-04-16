<template>
  <div id="app-sidebar">
    <label class="sidebar__header" for="checkboxes">Select field(s)</label>
    <sidebar-item v-for="sidebarItem in sidebarItems" v-bind:sidebarItem="sidebarItem" :key="sidebarItem.id">
    </sidebar-item>
  </div>
</template>

<script>
import SidebarItem from './SidebarItem.vue'

export default {
  name: 'app-sidebar',
  props: ['sidebarItems'],
  components: {
    SidebarItem
  }
}
</script>

<style lang="scss">
#app-sidebar {
  background-color: whitesmoke;
  box-shadow: 0 2px 3px rgba(10, 10, 10, 0.1), 0 0 0 1px rgba(10, 10, 10, 0.1);
  height: 16em;
  margin: 0 1.5em 1.5em;
  padding: 1em 3em 1.4em 1em;
}

.sidebar__header {
  font-size: 1.2em;
  font-weight: 500;
  margin-top: .2em;
}
</style>