import axios from 'axios';


export default {

    getInventory() {
        return axios.get('/inventory');
    },

    pushVehicle(car) {
        return axios.post('/inventory', car);
    }

}