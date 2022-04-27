import API from '$/service/team-shuffling'
import { defineController } from './$relay'

export default defineController(() => ({
  post: async () => ({ status: 201, body: await API.createNewTeam() })
}))
