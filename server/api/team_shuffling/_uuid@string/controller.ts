import API from '$/service/team-shuffling'
import {defineController} from './$relay'

export default defineController(() => ({
  get: async ({params}) => ({status: 200, body: await API.getTeam(params.uuid)}),
  post: async ({params, body}) => ({
    status: 201,
    body: await API.upsertSummoner(params.uuid, body.summonerName, body.tier, body.rank)
  })
}))
