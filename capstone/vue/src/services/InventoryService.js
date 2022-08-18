import axios from 'axios';


export default {

    getInventory() {
        return axios.get('/inventory');
    },

    pushVehicle(car) {
        return axios.post('/inventory', car);
    },

    purchaseVehicle(car) {
        return axios.put('/inventory', car);
    },

    updateVehicle(car) {
        return axios.put('/inventory', car);
    },

    getVehicleById(vin) {
        return axios.get(`/inventory/${vin}`)
    }

}