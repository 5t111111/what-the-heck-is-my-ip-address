<template>
  <div id="app-result">
    <table>
      <tr v-for="row in resultList">
        <td>{{ row.name }}</td>
        <td>{{ row.value }}</td>
      </tr>
    </table>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: 'app-result',
  data () {
    return {
      result: {}
    }
  },
  props: ['sidebarItems'],
  watch: {
    checkedSidebarIds: function (newCheckedSideBarIds) {
      this.getResult(newCheckedSideBarIds)
    }
  },
  computed: {
    checkedSidebarIds: function () {
      return this.sidebarItems
        .filter(function (element, index, array) {
          return element.checked == true
        })
        .map(function (element) {
          return element.id
        })
    },
    resultList: function () {
      var list = []
      let result = this.result
      let sidebarItems = this.sidebarItems
      Object.keys(result).forEach(function (key) {
        list.push({
          id: key,
          value: result[key],
          name: sidebarItems.find(function (element, index, array) {
            return element.id == key
          }).name
        })
      })
      return list
    }
  },
  methods: {
    getResult: function(ids) {
      var vm = this
      axios.get('/api?fields=' + ids.join(','))
        .then(function (response) {
          vm.result = response.data
        })
        .catch(function (error) {
          vm.result = error
        })
    }
  }
}
</script>

<style lang="scss">
</style>
