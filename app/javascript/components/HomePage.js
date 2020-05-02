import React from "react";
import PropTypes from "prop-types";
class HomePage extends React.Component {
  getPosts = () => {
    fetch("/api/v1/posts.json")
      .then((response) => response.json())
      .then((data) => {
        console.log(data);
      })
      .catch(console.error);
  };

  render() {
    return <React.Fragment>{this.getPosts()}</React.Fragment>;
  }
}

HomePage.propTypes = {
  tagline: PropTypes.string,
};
export default HomePage;
