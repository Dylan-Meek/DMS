<template>
  <div>
    <div class="title">
      <h1>Inventory</h1>
      <div id="searchBars">
        <!-- <span>Make:</span> -->
        <input
          class="search"
          type="text"
          id="makeFilter"
          v-model="filter.make"
          placeholder=" Search Make"
        />
        <!-- <span>Model:</span> -->
        <input
          class="search"
          type="text"
          id="modelFilter"
          v-model="filter.model"
          placeholder="Search Model"
        />
        <!-- <span>Year:</span> -->
        <input
          class="search"
          type="text"
          id="yearFilter"
          v-model="filter.year"
          placeholder="Search Year"
        />
      </div>
    </div>
    <!-- <div id="button"> -->
    <div v-if="$store.state.token !== ''">
      <button
        v-if="$store.state.user.authorities[0].name === 'ROLE_ADMIN'"
        href="#"
        v-on:click="showForm = true"
        v-show="!showForm"
      >
        Add Vehicle
      </button>
    </div>
    <!-- </div> -->
    <form id="form" v-on:submit.prevent="addVehicle" v-show="showForm">
      <div class="form-element">
        <label for="vin">Vin:</label>
        <input id="vin" type="text" v-model.trim="newVehicle.vin" />
      </div>
      <div class="form-element">
        <label for="make">Make:</label>
        <input id="make" type="text" v-model.trim="newVehicle.make" />
      </div>
      <div class="form-element">
        <label for="model">Model:</label>
        <input id="model" type="text" v-model.trim="newVehicle.model" />
      </div>
      <div class="form-element">
        <label for="year">Year:</label>
        <input id="year" type="text" v-model.number="newVehicle.year" />
      </div>
      <div class="form-element">
        <label for="mileage">Mileage:</label>
        <input id="mileage" type="text" v-model.number="newVehicle.mileage" />
      </div>
      <div class="form-element">
        <label for="engine">Engine type:</label>
        <input id="engine" type="text" v-model.trim="newVehicle.engine" />
      </div>
      <div class="form-element">
        <label for="condition">Condition:</label>
        <select id="rating" v-model.number="newVehicle.inputId">
          <option value="1">New</option>
          <option value="2">Used</option>
          <option value="3">Certified Pre-Owned</option>
        </select>
      </div>
      <div class="form-element">
        <label for="price">Price:</label>
        <input id="price" type="text" v-model.number="newVehicle.price" />
      </div>
      <div class="form-element">
        <label for="photo">Photo URL:</label>
        <input id="photo" type="text" v-model.trim="newVehicle.photo" />
      </div>
      <div class="form-element">
        <label for="notes">Notes:</label>
        <input id="notes" type="text" v-model.trim="newVehicle.notes" />
      </div>
      <input type="submit" value="Add" />
      <input type="button" value="Cancel" v-on:click="resetForm" />
    </form>

    <div class="inventory">
      <car-card v-for="car in filteredList" v-bind:key="car.vin" :car="car">
      </car-card>
    </div>
  </div>
</template>

<script>
import inventoryService from "@/services/InventoryService";
import carCard from "@/components/CarCard.vue";

export default {
  components: {
    carCard,
  },
  data() {
    return {
      showForm: false,
      newVehicle: {},
      cars: [],
      filter: {
        make: "",
        model: "",
        year: "",
      },
    };
  },
  created() {
    inventoryService.getInventory().then((response) => {
      this.cars = response.data;
    });
  },
  computed: {
    filteredList() {
      let filteredCars = this.cars;
      if (this.filter.make != "") {
        filteredCars = filteredCars.filter((car) =>
          car.make.toLowerCase().includes(this.filter.make.toLowerCase())
        );
      }
      if (this.filter.lastName != "") {
        filteredCars = filteredCars.filter((car) =>
          car.model.toLowerCase().includes(this.filter.model.toLowerCase())
        );
      }
      if (this.filter.year != "") {
        filteredCars = filteredCars.filter((car) =>
          car.year.toLowerCase().includes(this.filter.year.toLowerCase())
        );
      }
      return filteredCars;
    },
  },
  methods: {
    addVehicle() {
      this.cars.push(this.newVehicle);
      inventoryService.pushVehicle(this.newVehicle);
      this.resetForm();
    },
    resetForm() {
      this.newVehicle = {};
      this.showForm = false;
    },
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Montserrat:ital@1&display=swap");

* {
  font-family: Montserrat, Helvetica;
}
.title {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

h1 {
  font-family: "Montserrat", "Helvetica";
  color: #f9f7f7;
}

.inventory {
  display: flex;
  flex-direction: row;
  justify-content: space-evenly;
  align-items: center;
  flex-wrap: wrap;
}
.car {
  background-color: #f7fafc;
  border-radius: 10px;
  padding: 40px;
  flex: 1;
  margin: 0 20px;
  text-align: center;
}

#searchBars {
  color: white;
  display: flex;
  justify-content: space-between;
  margin-bottom: 3%;
  width: 45vw;
}

.search {
  border-radius: 5px;
  width: 12rem;
  align-content: center;
  font-size: 1rem;
  border: 1px solid #162228;
}

button {
  margin-left: 45%;
  margin-bottom: 2%;
}

#form {
  display: flex;
  flex-direction: column;
  align-items: center;
  background-color: rgba(249, 247, 247, 0.7);
  margin-left: 30%;
  margin-right: 30%;
  margin-bottom: 2%;
  border-radius: 10px;
}
.form-element {
  display: flex;
  flex-direction: column;
  margin-left: 40%;
  margin-right: 40%;
}

div.form-element > label {
  margin-top: 1.5vh;
  display: block;
}

div.form-element > textarea {
  height: 60px;
  width: 300px;
}

div.form-element > input,
div.form-element > select {
  margin-top: 1%;
  height: 15px;
  width: 300px;
}
div.form-element > textarea {
  height: 30px;
  width: 300px;
}
form > input[type="button"] {
  margin-left: auto;
  margin-right: auto;
  color: #162228;
  background-color: #f9f7f7;
  border-radius: 5px;
  width: 25%;
  align-content: center;
  font-size: 0.9rem;
  margin-bottom: 2vh;
}

form > input[type="submit"] {
  margin-left: auto;
  margin-right: auto;
  color: #162228;
  background-color: #ffde32;
  border-radius: 5px;
  width: 25%;
  align-content: center;
  font-size: 0.9rem;
  margin-top: 2vh;
  margin-bottom: 2vh;
}
</style>