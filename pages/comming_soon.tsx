import {useRouter} from 'next/router'
import Image from "next/image";

const Page = () => {
  const router = useRouter()

  return (
    <main className="w-full h-screen bg-gray-100">
      {/* 背景画像 */}
      <div
        className="fixed right-0 bottom-0 scale-50 xl:scale-100 translate-x-1/4 xl:translate-x-0 translate-y-1/4 xl:translate-y-0">
        <Image src="/teemo.png" width={601} height={575}/>
      </div>

      {/* Coming soonメッセージ */}
      <div className="flex flex-none justify-center h-full">
        <div className="flex flex-col items-center self-center p-4 text-gray-800">
          <h1 className="text-5xl">Coming soon...</h1>
          <button
            className="flex flex-row items-center py-2 px-4 my-9 font-semibold text-gray-800 hover:text-gray-100 bg-transparent hover:bg-gray-800 rounded border border-gray-800 hover:border-transparent"
            onClick={() => {
              router.back()
            }}
          >
            <svg xmlns="http://www.w3.org/2000/svg" className="w-6 h-6" fill="none" viewBox="0 0 24 24"
                 stroke="currentColor">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M15 19l-7-7 7-7"/>
            </svg>
            <span className="mt-0.5 font-mono">Click here to go back</span>
          </button>
        </div>
      </div>
    </main>
  )
}
export default Page