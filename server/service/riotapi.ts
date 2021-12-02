import axios from "axios";
import {RIOT_API_KEY} from "$/service/envValues";

export const post = (region: string) => axios.post(`https://${region}.api.riotgames.com/?api_key=${RIOT_API_KEY}`)
