import {defineController} from './$relay'
import API from "$/service/riotapi";

export default defineController(() => ({
  get: async ({query}) => ({
    status: 200, body: await API.getChampion(query.region, query.id)
  })
}))
