<template>
  <label>
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
label {
  display: block;
}
</style>