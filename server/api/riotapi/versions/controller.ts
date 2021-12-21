import {defineController} from './$relay'
import API from '$/service/riotapi'

export default defineController(() => ({
  get: async () => ({status: 200, body: await API.getVersions()})
}))
