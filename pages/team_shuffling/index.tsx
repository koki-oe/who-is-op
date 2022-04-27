import Header from "~/components/Header";
import {apiClient} from "~/utils/apiClient";
import {useRouter} from "next/router";

const Home = () => {
  const router = useRouter()

  const createNewTeam = async () => {
    const newTeam = await apiClient.team_shuffling.$post()
    return await router.push(`/team_shuffling/${newTeam.uuid}`)
  }

  return (
    <div className="w-full h-screen bg-gray-200">
      <Header/>
      <main className="relative mx-8 xl:mx-auto xl:w-7/12 bg-gray-200">
        <button onClick={createNewTeam}>Create New Team</button>
      </main>
    </div>)
}
export default Home