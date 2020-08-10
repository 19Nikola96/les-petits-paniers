import React from 'react';

class SearchBar extends React.Component
{
    state = {
        search : ''
    }

    render(){
        return(
            <section className="mt-5 card-list container row justify-content-between mx-auto">
                <div className="container">
                    <input type="text" className="shad-i px-3" placeholder="Search"/>
                    <button className="shad-b" type="button" id="search">
                        <i className="fas fa-search mr-1"></i>
                    </button>
                </div>
            </section>
        )
    }
}

export default SearchBar;