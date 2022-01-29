import Head from "next/head"
import Image from "next/image"
import useAspidaSWR from "@aspida/swr";
import {apiClient} from "~/utils/apiClient";
import Header from "~/components/Header";
import {useRouter} from "next/router";
import Footer from "~/components/Footer";

const Home = () => {
  const router = useRouter()

  const region = "ja_JP"

  const {data: version} = useAspidaSWR(apiClient.riotapi.versions.newest)
  const {data: champions} = useAspidaSWR(apiClient.riotapi.champions, {query: {region}})

  return (
    <div>
      <Head>
        <title>Who is OP?</title>
        <link rel="icon" href="/favicon.png"/>
      </Head>

      <main className="text-gray-100 bg-gray-800">
        <div className="flex flex-col">
          {/* 背景画像 */}
          <div
            className="fixed right-0 bottom-0 z-0 scale-50 xl:scale-100 translate-x-1/4 xl:translate-x-0 translate-y-1/4 xl:translate-y-0">
            <Image src="/teemo.png" width={601} height={575}/>
          </div>

          {/* ナビゲーションバー */}
          <Header/>

          {/* マストヘッド */}
          <div className="flex flex-none justify-center h-96 bg-gray-100">
            <div className="flex flex-col items-center self-center p-4 text-gray-800">
              <h1 className="font-mono text-5xl">Who is OP?</h1>
              <p className="pt-1 font-serif text-xl">
                {
                  "Let's search a new perspective on League of Legends, " +
                  "e.g. " +
                  "how to build against counters like OTP, " +
                  "the weak points of your champion pool, " +
                  "etc..."
                }
              </p>
            </div>
          </div>

          {/* 機能一覧 */}
          <div className="flex flex-col justify-center py-6 px-4 md:px-16 lg:px-8 bg-gray-800">
            {/*
              <div className="pb-4 font-mono text-2xl">Features</div>
              <div className="grid grid-cols-1 md:grid-cols-2 2xl:grid-cols-3 gap-6 pl-4 xl:w-2/3 text-gray-800">
              <ServiceCard bg_path={"/background_1.JPG"} title="Build like OTP"
              href={`/champion/aatrox`}
              description="Search how OTPs build runes and items."/>
              <ServiceCard bg_path={"/background_2.JPG"} title="Search Counters"
              href="/comming_soon"
              description="テストテストテストテストテストテストテストテストテストテスト"/>
              <ServiceCard bg_path={"/background_2.JPG"} title="Test Image"
              href="/comming_soon"
              description="テストテストテストテストテストテストテストテストテストテスト"/>
              </div>
            */}

            <div className="pb-4 font-mono text-2xl">Champions</div>
            <div className="z-10 p-2 lg:ml-16 lg:w-2/3 bg-gray-800 border-2 border-gray-100 border-dashed">
              <div
                className="grid grid-cols-3 md:grid-cols-5 lg:grid-cols-7 gap-2">
                {champions && Object.keys(champions.data).map((id) => (
                  <button key={id} onClick={() => router.push(`/champion/${id}`)}>
                    <Image
                      src={`https://ddragon.leagueoflegends.com/cdn/${version}/img/champion/${champions.data[id].image.full}`}
                      alt={id} width={96} height={96}/>
                    <p>{champions.data[id].name}</p>
                  </button>
                ))}
              </div>
            </div>
          </div>
        </div>
        <Footer />
      </main>
    </div>
  )
}

export default Home