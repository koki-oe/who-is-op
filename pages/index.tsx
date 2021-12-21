import Head from "next/head"
import Link from "next/link"
import Image from "next/image"
import ServiceCard from "~/components/ServiceCard";

const Home = () => {
  return (
    <div>
      <Head>
        <title>Who is OP?</title>
        <link rel="icon" href="/favicon.png"/>
      </Head>

      <div className="flex flex-col h-screen text-gray-100 bg-gray-800">
        <div className="flex justify-end items-center w-full h-8 text-gray-100 bg-gray-800">
          <div className="px-2">
            <Link href="/">
              <a>Who is OP?</a>
            </Link>
          </div>
        </div>
        <div className="flex justify-center h-2/5 bg-gray-100">
          <div className="flex flex-col items-center self-center text-gray-800">
            <div className="font-mono text-5xl">Who is OP?</div>
            <p className="pt-1 font-serif text-xl">
              {
                "Let's search a new perspective on League of Legends, " +
                "e.g. " +
                "how to build against counters like OTP, " +
                "weak points of your champion pool, " +
                "etc..."
              }
            </p>
          </div>
        </div>
        <div className="flex-grow">
          <div className="flex flex-col justify-center px-48 -mt-6 h-full">
            <div className="pb-4 font-mono text-2xl">Features</div>
            <div className="flex flex-row pl-4 space-x-6 w-full text-gray-800">
              <ServiceCard bg_path={"/background_1.JPG"} title="Search Builds"
                           href="/search_counters"
                           description="テストテストテストテストテストテストテストテストテストテスト"/>
              <ServiceCard bg_path={"/background_2.JPG"} title="Search Counters"
                           href="#"
                           description="テストテストテストテストテストテストテストテストテストテスト"/>
            </div>
          </div>
        </div>
        <div className="fixed right-0 bottom-0">
          <Image src="/teemo.png" width={601} height={575}/>
        </div>
      </div>
    </div>
  )
}

export default Home