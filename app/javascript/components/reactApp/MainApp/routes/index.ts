import { RouteConfig } from "react-router-config";
import { MainApp } from "./MainApp";

export const routes: RouteConfig[] = [
  // --- Account ---
  {
    path: "/dashboard/account",
    component: Account,
  },
  // --- Insights ----
  {
    path: "/dashboard",
    exact: true,
    component: Dashboard,
  },
  {
    path: "/dashboard/visitors",
    component: Dashboard,
  },
  {
    path: "/dashboard/engagements",
    component: Dashboard,
  },
  {
    path: "/dashboard/feedback",
    component: Dashboard,
  },
  {
    path: "/dashboard/sales",
    component: Sales,
  },
  // --- Manage ---
  {
    path: "/dashboard/story",
    component: Stories,
  },
  {
    path: "/dashboard/products",
    component: Products,
  },
  {
    path: "/dashboard/tablets",
    component: Tablets,
  },
  {
    path: "/dashboard/inventory",
    component: Dashboard,
  },
  {
    path: "/dashboard/campaigns",
    component: Dashboard,
  },
];
