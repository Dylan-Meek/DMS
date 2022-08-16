<template>
  <div>
    <h1>Customers</h1>
    <div class="customers">
      <table id="tblUsers">
        <thead>
          <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Username</th>
            <th>Email Address</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="user in customers" v-bind:key="user.username" :user="user">
            <td>{{ user.firstName }}</td>
            <td>{{ user.lastName }}</td>
            <td>{{ user.username }}</td>
            <td>{{ user.email }}</td>
            <td>
              <router-link
                v-bind:to="{
                  name: 'dealerViewCustomerGarage',
                  params: { id: user.id },
                }"
                ><button>Visit Garage</button></router-link
              >
            </td>
          </tr>
        </tbody>
      </table>
      <!-- <table
        v-for="user in customers"
        v-bind:key="user.username"
        :user="user"
      ></table> -->
      <data class="customers"></data>
    </div>
  </div>
</template>

<script>
// import CustomerCard from "@/components/CustomerCard.vue";
import DealerService from "@/services/DealerService.js";

export default {
  components: {
    // CustomerCard,
  },
  data() {
    return {
      customers: [],
    };
  },
  created() {
    DealerService.getCustomers().then((response) => {
      this.customers = response.data;
    });
  },
};
</script>

<style scoped>
* {
  font-family: "Montserrat", "Helvetica";
}
#tblUsers {
  background-color: rgba(249, 247, 247, 0.9);
  padding: 2rem;
  font-size: 1.5rem;
  border-radius: 10px;
}

th,
td {
  padding-right: 1.5rem;
  align-content: left;
}

th {
  padding-bottom: 1rem;
  text-decoration: underline;
}
.customers {
  display: flex;
  align-content: center;
  justify-content: center;
}
h1 {
  display: flex;
  align-content: center;
  justify-content: center;
}
button {
  margin-left: auto;
  margin-right: auto;
  color: #162228;
  background-color: #ffde32;
  border-radius: 5px;
  width: 100%;
  align-content: center;
  font-size: 0.9rem;
}
</style>