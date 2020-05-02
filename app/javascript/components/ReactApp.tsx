import React from "react";
// import { Provider } from 'react-redux';
import { BrowserRouter as Router } from "react-router-dom";
// import { setStore } from '../store';
import { routes } from "./routes";
// import { User } from '../store/models';

import "./style.css";

// These properties are passed through the DOM.
// See the main_app_helper.rb.
export type MainAppProps = {
  currentUser: any;
};

export const MainApp = () => {
  return <Router>{renderRoutes(routes, this.props)}</Router>;
};
