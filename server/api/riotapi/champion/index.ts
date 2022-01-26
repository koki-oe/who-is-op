import {Champion} from "$/service/riotapi";

export type Methods = {
  get: {
    query: {
      region: string
      id: string
    }
    resBody: Champion | undefined
  }
}
