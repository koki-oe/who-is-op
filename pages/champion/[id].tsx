import {apiClient} from '~/utils/apiClient'
import useAspidaSWR from "@aspida/swr";
import {useRouter} from "next/router";
import {useEffect, useState} from "react";
import {Champion} from "$/service/riotapi";
import Image from "next/image"
import Header from "~/components/Header";

const Home = () => {
  const router = useRouter()
  const {id} = router.query

  const region = "ja_JP"

  const {data: version} = useAspidaSWR(apiClient.riotapi.versions.newest)

  const [champion, setChampion] = useState({} as Champion | undefined)
  useEffect(() => {
      (async () => {
        console.log(id)
        if (!id || typeof id !== 'string') return
        setChampion(await apiClient.riotapi.champion.$get({query: {region, id}}))
      })()
    }, [id]
  )

  console.log(JSON.stringify(champion, null, '\t'));

  const sample = {
    name: "Summoner Name",
    rank: "Grand Master",
    lp: 260,
    winrate: 57,
    games: 14,
  }
  const summoners = [sample, sample, sample, sample]

  return (
    <div className="w-full h-screen bg-gray-200">
      <Header/>
      <main className="flex justify-center bg-gray-200">
        {(champion && champion.image) && (
          <div className="flex flex-col">
            {/* チャンピオンヘッダー */}
            <div className="flex flex-row my-6">
              <Image
                src={`https://ddragon.leagueoflegends.com/cdn/${version}/img/champion/${champion.image.full}`}
                alt={champion.id} width={120} height={120}/>
              <div className="flex flex-col justify-between mx-3">
                <span className="text-3xl">{champion.name}</span>
                <div className="flex flex-row gap-1">
                  <Image
                    src={`https://ddragon.leagueoflegends.com/cdn/${version}/img/passive/${champion.passive.image.full}`}
                    alt={champion.passive.name} width={48} height={48}/>
                  {champion.spells.map(spell => (
                    <Image
                      key={spell.id}
                      src={`https://ddragon.leagueoflegends.com/cdn/${version}/img/spell/${spell.image.full}`}
                      alt={spell.name} width={48} height={48}/>
                  ))}
                </div>
              </div>
            </div>

            {/* プレイヤーリスト */}
            <p>※本機能は開発中です。以下テストデータを含みます。</p>
            {summoners.map(summoner => (
              <div key={summoner.name}>
                <div className="flex flex-row my-4">
                  <div>
                    <Image
                      src={`https://ddragon.leagueoflegends.com/cdn/9.9.1/img/profileicon/588.png`}
                      alt={'test icon'} width={48} height={48}
                      className="rounded-full"
                    />
                  </div>
                  <div className="flex flex-row flex-grow justify-between px-2 mx-1 border-b border-gray-800">
                    <div>
                      <p className="text-lg">{summoner.name}</p>
                      <p className="font-mono text-sm">
                        <span>Grand Master</span>
                        <span className="ml-1">{summoner.lp}LP</span>
                      </p>
                    </div>
                    <div className="flex flex-col items-center">
                      <span className="text-lg">{summoner.winrate}%WR</span>
                      <span className="font-mono text-sm">{summoner.games} games</span>
                    </div>
                  </div>
                </div>
                <div>
                  <p className="text-lg">Favorite Orders</p>
                  <div className="flex flex-row gap-8 my-2">
                    <div className="flex flex-col items-center">
                      <div className="flex flex-row gap-1 items-center">
                        <Image
                          src={`https://ddragon.leagueoflegends.com/cdn/9.9.1/img/spell/SummonerTeleport.png`}
                          alt={"flash"} width={40} height={40}/>
                        <Image
                          src={`https://ddragon.leagueoflegends.com/cdn/9.9.1/img/spell/SummonerFlash.png`}
                          alt={"flash"} width={40} height={40}/>
                      </div>
                      <p className="font-mono text-sm">85.71%</p>
                    </div>
                    <div className="flex flex-col items-center">
                      <div className="flex flex-row gap-1 items-center">
                        <Image
                          src={`https://ddragon.leagueoflegends.com/cdn/${version}/img/spell/${champion.spells[0].image.full}`}
                          alt={champion.spells[0].name} width={40} height={40}/>
                        <span>{">"}</span>
                        <Image
                          src={`https://ddragon.leagueoflegends.com/cdn/${version}/img/spell/${champion.spells[2].image.full}`}
                          alt={champion.spells[0].name} width={40} height={40}/>
                        <span>{">"}</span>
                        <Image
                          src={`https://ddragon.leagueoflegends.com/cdn/${version}/img/spell/${champion.spells[1].image.full}`}
                          alt={champion.spells[0].name} width={40} height={40}/>
                      </div>
                      <p className="font-mono text-sm">64.29%</p>
                    </div>
                  </div>
                </div>
              </div>
            ))}
          </div>
        )}
      </main>
    </div>
  )
}

export default Home