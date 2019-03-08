import React from "react"

const SearchBar = () => {

handleSubmit(e) {
  e.preventDefault
}


  return(
    <form onSubmit={this.handleSubmit} className="searchbar">
      <input type="text" placeholder="Search" className="searchBar"/>
          <input type="submit" value="Search" onSubmit={this.handleSubmit}/>
      </form>
  )
}

export default SearchBar
