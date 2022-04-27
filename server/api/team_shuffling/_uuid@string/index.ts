import {CustomSummoner, CustomTeam} from "@prisma/client";

export type Methods = {
  get: {
    resBody: CustomTeam & { participants: CustomSummoner[] } | null
  }
  post: {
    reqBody: Pick<CustomSummoner, 'summonerName' | 'tier' | 'rank'>
    resBody: CustomSummoner
  }
}
