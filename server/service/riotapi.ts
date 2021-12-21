import axios from "axios";
import {RIOT_API_KEY} from "$/service/envValues";

class API {
  static HOST_RIOTAPI = "api.riotgames.com"
  static HOST_DDRAGON = "ddragon.leagueoflegends.com"

  static get = async (path: string) => (await axios.get(`https://${API.HOST_DDRAGON}/${path}`)).data
  static useDDragonAPI = async (path: string) => await API.get(`api/${path}`)
  static useDDragonCDN = async (path: string) => await API.get(`cdn/${path}`)

  static post = async (region: string) => await axios.post(`https://${region}.${API.HOST_RIOTAPI}/?api_key=${RIOT_API_KEY}`)

  static getVersions = async () => await API.useDDragonAPI('versions.json')
  static getNewestVersion = async (): Promise<string> => {
    const versions = await API.getVersions()
    if (Array.isArray(versions) && versions.length > 0) return versions[0] as string
    return 'undefined'
  }
  static getFromNewest = async (path: string) => await API.useDDragonCDN(`${await API.getNewestVersion()}/${path}`)

  static getChampions = async (region: string) => (await API.getFromNewest(`data/${region}/champion.json`)) as Champions
  static getBriefSummary = async (region: string, id: string): Promise<BriefSummary | undefined> => {
    const champions_data = (await API.getChampions(region)).data
    if (Array.isArray(champions_data) && champions_data.length > 0) return champions_data[id]
    return undefined
  }
}

export type Champions = {
  type: string
  format: string
  version: string
  data: { [id: string]: BriefSummary }
}

export type BriefSummary = {
  version: string
  id: string
  key: string
  name: string
  title: string
  blurb: string
  info: {
    attack: number
    defense: number
    magic: number
    difficulty: number
  }
  image: {
    full: string
    sprite: string
    group: string
    x: number
    y: number
    w: number
    h: number
  }
  tags: string[]
  partype: string
  stats: {
    hp: number
    hpperlevel: number
    mp: number
    mpperlevel: number
    movespeed: number
    armor: number
    armorperlevel: number
    spellblock: number
    spellblockperlevel: number
    attackrange: number
    hpregen: number
    hpregenperlevel: number
    mpregen: number
    mpregenperlevel: number
    crit: number
    critperlevel: number
    attackdamage: number
    attackdamageperlevel: number
    attackspeedperlevel: number
    attackspeed: number
  }
}

export default API
