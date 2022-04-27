import {CustomSummoner, CustomTeam, PrismaClient, Tier} from "@prisma/client"

const prisma = new PrismaClient()

class API {
  static createNewTeam = async () => await prisma.customTeam.create({data: {}})

  static getTeam = async (uuid: string) => await prisma.customTeam.findUnique({
    where: {uuid},
    include: {participants: true}
  })

  static upsertSummoner = async (
    teamUUID: CustomSummoner['teamUUID'],
    summonerName: CustomSummoner['summonerName'], tier: CustomSummoner['tier'], rank: CustomSummoner['rank']
  ) => await prisma.customSummoner.upsert({
    where: {teamUUID_summonerName: {teamUUID, summonerName}},
    update: {tier, rank},
    create: {summonerName, tier, rank, teamUUID}
  })

  static setOrder = async (uuid: string, summonerName: string, order: number) =>
    await prisma.customSummoner.update({
      where: {teamUUID_summonerName: {teamUUID: uuid, summonerName}},
      data: {order}
    })
}

export default API
