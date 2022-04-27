import {useRouter} from "next/router";
import Header from "~/components/Header";
import useAspidaSWR from "@aspida/swr";
import {apiClient} from "~/utils/apiClient";
import React, {useState} from "react";
import {Tier} from "@prisma/client";


const Home = () => {
  const router = useRouter()
  const {uuid: rawUUID} = router.query
  const uuid = typeof rawUUID === "string" ? rawUUID : ''

  const {data: customTeam, mutate} = useAspidaSWR(apiClient.team_shuffling._uuid(uuid))

  const tiers: Tier[] = ['IRON', 'BRONZE', 'SILVER', 'GOLD', 'PLATINUM', 'DIAMOND', 'MASTER', 'GRAND_MASTER', 'CHALLENGER']
  const ranks = ['I', 'II', 'III', 'IV']
  const [newSummoner, setNewSummoner] = useState({summonerName: '', tier: tiers[0], rank: ranks[0]})

  const handleChange = (event: React.ChangeEvent<HTMLInputElement | HTMLSelectElement>) =>
    setNewSummoner({...newSummoner, [event.target.name]: event.target.value})

  const addSummoner = async (event: React.FormEvent<HTMLFormElement>) => {
    event.preventDefault()
    if (newSummoner.summonerName && newSummoner.tier && newSummoner.rank) {
      await apiClient.team_shuffling._uuid(uuid).$post({
        body: {
          summonerName: newSummoner.summonerName,
          tier: newSummoner.tier,
          rank: ranks.indexOf(newSummoner.rank)
        }
      })
      await mutate()
    }
  }

  if (!customTeam) return (<div>Invalid Team UUID.</div>)

  return (
    <div className="w-full h-screen bg-gray-200">
      <Header/>
      <main className="relative mx-8 xl:mx-auto xl:w-7/12 bg-gray-200">
        <p>uuid: {customTeam.uuid}</p>
        <div>
          <form onSubmit={addSummoner}>
            <input type="text" name="summonerName" value={newSummoner.summonerName} onChange={handleChange}/>
            <select name="tier" value={newSummoner.tier} onChange={handleChange}>
              {tiers.map((tier) => <option key={tier} value={tier}>{tier}</option>)}
            </select>
            <select name="rank" value={newSummoner.rank} onChange={handleChange}>
              {ranks.map((rank) => <option key={rank} value={rank}>{rank}</option>)}
            </select>
            <input type="submit" value="Add Summoner"/>
          </form>
        </div>
        <div>
          {customTeam.participants.map((summoner) => (
            <p key={summoner.summonerName}>{summoner.summonerName} {summoner.tier} {ranks[summoner.rank]}</p>))}
        </div>
      </main>
    </div>
  )
}
export default Home