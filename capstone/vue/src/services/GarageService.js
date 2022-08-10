
import axios from 'axios';

export default {

    getGarage() {
        return axios.get('/garage');
    },
}