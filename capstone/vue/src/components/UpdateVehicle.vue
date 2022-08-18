<template>
  <div>
    <br />
    <form id="form" v-on:submit.prevent="addVehicle">
      <h2>Update Vehicle</h2>
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
      <input type="submit" value="Update" />
      <input type="button" value="Cancel" v-on:click="resetForm" />
    </form>
  </div>
</template>

<script>
export default {
  data() {
    return {
      showForm: true,
      newVehicle: {},
      cars: [],
      filter: {
        make: "",
        model: "",
        year: "",
      },
    };
  },
};
</script>

<style scoped>
#form {
  display: flex;
  flex-direction: column;
  align-items: center;
  background-color: rgba(249, 247, 247, 0.85);
  font-weight: bold;
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
  font-weight: bold;
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
  font-weight: bold;
  border-radius: 5px;
  width: 25%;
  align-content: center;
  font-size: 0.9rem;
  margin-top: 2vh;
  margin-bottom: 2vh;
}
</style>
