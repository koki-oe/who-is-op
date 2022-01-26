import Link from "next/link";

const Header = () => {
  return (
    <nav className="flex justify-end items-center w-full h-8 text-gray-100 bg-gray-800">
      <div className="px-2">
        <Link href="/">
          <a>Who is OP?</a>
        </Link>
      </div>
    </nav>
  )
}
export default Header