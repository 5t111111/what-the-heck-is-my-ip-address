<template>
  <div id="app-nav">
    <nav class="nav">
      <ul class="nav__items">
        <li>What The Heck Is My IP Address?</li>
      </ul>
    </nav>
  </div>
</template>

<script>
export default {
  name: 'app-nav'
}
</script>

<style lang="scss">
.nav {
  background-color: #353535;
}

.nav__items {
  display: flex;
  margin: 0;
  padding: 1rem;
  color: #fff;
  list-style: none;
}
</style>
