import React from "react";

class ReactApp extends React.Component {
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

export default ReactApp;
