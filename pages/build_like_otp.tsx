import {apiClient} from '~/utils/apiClient'
import useAspidaSWR from "@aspida/swr";
import {useEffect, useState} from "react";
import Image from 'next/image'

const Home = () => {
  const region = "ja_JP"

  const {data: version} = useAspidaSWR(apiClient.riotapi.versions.newest)
  const {data: champions} = useAspidaSWR(apiClient.riotapi.champions, {query: {region}})
  const [images, setImages] = useState({} as { [id: string]: string })
  useEffect(() => {
    if (!champions) return

    const tempImages = {} as { [id: string]: string }
    for (const id of Object.keys(champions.data)) {
      tempImages[id] = `https://ddragon.leagueoflegends.com/cdn/${version}/img/champion/${champions.data[id].image.full}`
    }
    setImages(tempImages)
  }, [champions])

  return (
    <div className="grid grid-cols-6 gap-0">
      {Object.keys(images).map((id) => (
        <div key={id}>
          <Image src={images[id]} alt={id} width={120} height={120}/>
        </div>
      ))}
    </div>
  )
}

export default Home