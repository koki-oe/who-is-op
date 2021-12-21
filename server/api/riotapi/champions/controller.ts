import API from '$/service/riotapi'
import {defineController} from './$relay'

export default defineController(() => ({
  get: async ({ query }) => ({status: 200, body: await API.getChampions(query.region)})
}))
