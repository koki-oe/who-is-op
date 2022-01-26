import Image from "next/image"
import {useCallback} from "react";
import router from "next/router";

type Props = {
  bg_path: string
  title: string
  href: string
  description: string
}

const ServiceCard = (props: Props) => {
  const handleClick = useCallback(() => {
    router.push(props.href)
  }, [props.href])

  return (
    <div className="flex justify-center items-center w-full h-full">
      <a href={props.href} onClick={handleClick}>
        <div
          className="flex relative justify-center pl-1 rounded-xl transition duration-500 transform hover:scale-105 cursor-pointer">
          <div
            className="md:block absolute top-0 left-0 z-30 px-2 mt-3 text-xs md:text-sm font-medium text-gray-100 bg-green-500 rounded-lg">
            New
          </div>
          <div className="absolute top-0 left-0 z-20 px-2 mt-5 h-2 md:h-3 bg-green-500"/>
          <div className="absolute top-0 left-0 z-0 pl-5 mt-6 h-2 md:h-3 bg-green-600 rounded-3xl"/>
          <div className="z-10 pb-2 w-80 bg-white rounded-xl shadow-xl">
            <div className="relative">
              <Image src={props.bg_path} width={980} height={520} className="object-cover max-h-60 rounded-t-xl"
                     alt=""/>
              {/*<div
              className="absolute right-0 bottom-0 px-2 mr-2 mb-2 text-xs font-medium text-gray-100 bg-yellow-500 rounded-lg">
              New
            </div>*/}
            </div>
            <div className="py-1 px-2">
              <div className="pr-2 text-sm md:text-base font-bold">{props.title}</div>
              <p className="py-1 md:pb-2 text-xs md:text-sm text-gray-500">{props.description}</p>
              <div className="flex justify-end">
                <p className="pr-3">→</p>
              </div>
            </div>
          </div>
        </div>
      </a>
    </div>
  )
}

export default ServiceCard
