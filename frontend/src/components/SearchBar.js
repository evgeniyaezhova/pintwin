import React from "react"

const SearchBar = () => {
  return(
    <form className="searchbar">
      <input type="text" placeholder="Search" className="searchBar"/>
          <input type="submit" value="Search"/>
      </form>
  )
}

export default SearchBar
