
import axios from 'axios';

export default {

    getGarage() {
        return axios.get('/garage');
    },

    getCustomerGarageById(id) {
        return axios.get(`/customers/${id}`);
    }
}