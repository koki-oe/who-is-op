import axios from "axios";
import {RIOT_API_KEY} from "$/service/envValues";

class API {
  // APIやデータドラゴンのホスト名
  static HOST_RIOTAPI = "api.riotgames.com"
  static HOST_DDRAGON = "ddragon.leagueoflegends.com"

  // GET
  static get = async (path: string) => (await axios.get(`https://${API.HOST_DDRAGON}/${path}`)).data
  static useDDragonAPI = async (path: string) => await API.get(`api/${path}`)
  static useDDragonCDN = async (path: string) => await API.get(`cdn/${path}`)

  // POST
  static post = async (region: string) => await axios.post(`https://${region}.${API.HOST_RIOTAPI}/?api_key=${RIOT_API_KEY}`)

  // バージョンの取得
  static getVersions = async () => await API.useDDragonAPI('versions.json')
  // 最新バージョンの取得
  static getNewestVersion = async (): Promise<string> => {
    const versions = await API.getVersions()
    if (Array.isArray(versions) && versions.length > 0) return versions[0] as string
    return 'undefined'
  }
  static getFromNewest = async (path: string) => await API.useDDragonCDN(`${await API.getNewestVersion()}/${path}`)

  // キーを小文字にした上でのチャンピオンリストの取得
  static getChampions = async (region: string): Promise<Champions> => {
    const champions = (await API.getFromNewest(`data/${region}/champion.json`)) as Champions
    champions.data = Object.fromEntries(Object.entries(champions.data).map((entry => [entry[0].toLowerCase(), entry[1]])))
    return champions
  }
  // チャンピオンデータの取得
  static getBriefSummary = async (region: string, id: string): Promise<BriefSummary | undefined> => {
    const championsData = (await API.getChampions(region)).data

    if (championsData != null && typeof championsData === 'object')
      return championsData[id.toLowerCase()]
    else
      return undefined
  }

  // 詳細を含むチャンピオンデータの取得
  static getChampion = async (region: string, id: string): Promise<Champion | undefined> => {
    const briefSummary = await API.getBriefSummary(region, id)
    if (!briefSummary) return briefSummary

    const rawChampion = await API.getFromNewest(`data/${region}/champion/${briefSummary.id}.json`)
    return rawChampion.data[briefSummary.id] as Champion
  }
}
export default API

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
  info: Info
  image: Image
  tags: string[]
  partype: string
  stats: Stats
}

export type Champion = {
  id: string
  key: string
  name: string
  title: string
  image: Image
  skins: Skin[]
  lore: string
  blurb: string
  allytips: string[]
  enemytips: string[]
  tags: string[]
  partype: string
  info: Info
  stats: Stats
  spells: Spell[]
  passive: Passive
  recommended: []
}

type Image = {
  full: string
  sprite: string
  group: string
  x: number
  y: number
  w: number
  h: number
}

type Skin = {
  id: string
  num: number
  name: string
  chromas: boolean
}

type Info = {
  attack: number
  defense: number
  magic: number
  difficulty: number
}

type Stats = {
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

type Spell = {
  id: string
  name: string
  description: string
  tooltip: string
  leveltip: LevelTip
  maxrank: number
  cooldown: number[]
  cooldownBurn: string
  cost: number[]
  costBurn: string
  datavalues: {}
  effect: (number[] | null)[]
  effectBurn: (string | null)[]
  vars: []
  costType: string
  maxammo: string
  range: number[]
  rangeBurn: string
  image: Image
  resource: string
}

type LevelTip = {
  label: string[]
  effect: string[]
}

type Passive = {
  name: string
  description: string
  image: Image
}
