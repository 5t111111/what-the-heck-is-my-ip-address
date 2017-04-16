<template>
  <label class="sidebar__item">
    <input type="checkbox" name="checkboxes" v-bind:value="sidebarItem.id" v-on:click="toggleChecked">
    {{ sidebarItem.name }}
  </label>
</template>

<script>
  export default {
    name: 'sidebar-item',
    props: ['sidebarItem'],
    methods: {
      toggleChecked: function () {
        this.sidebarItem.checked = !this.sidebarItem.checked
      }
    }
  }
</script>

<style lang="scss">
.sidebar__item {
  display: block;
  font-weight: 500;
  margin-top: .7em;
}
</style>