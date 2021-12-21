import { Champions } from "$/service/riotapi";

export type Methods = {
  get: {
    query: {
      region: string
    }
    resBody: Champions
  }
}
