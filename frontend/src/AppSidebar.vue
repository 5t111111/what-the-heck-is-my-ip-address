<template>
  <div id="app-sidebar">
    <label for="checkboxes">Select field(s):</label>
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
</style>