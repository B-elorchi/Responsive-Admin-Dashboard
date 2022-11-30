const rootRoute = "/";

const OverviewPageDisplayName = "Overview";
const OverviewPageRoute = "/Overview";

const LoginPageDisplayName = "login";
const LoginPageRoute = "/login";

// const clientsPageDisplayName = "Clients";
// const clientsPageRoute = "/clients";

// const authenticationPageDisplayName = "Log out";
// const authenticationPageRoute = "/auth";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItemRoutes = [
  MenuItem(LoginPageDisplayName, LoginPageRoute),
  MenuItem(OverviewPageDisplayName, OverviewPageRoute),
  // MenuItem(clientsPageDisplayName, clientsPageRoute),
  // MenuItem(authenticationPageDisplayName, authenticationPageRoute),
];
