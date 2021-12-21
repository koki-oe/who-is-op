import API from '$/service/riotapi'
import {defineController} from './$relay'

export default defineController(() => ({
  get: async () => ({status: 200, body: await API.getNewestVersion()})
}))
