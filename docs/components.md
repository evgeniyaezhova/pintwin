# Component Hierarchy

**AuthFormContainer**
* AuthForm

**NavBar**
* SearchBar
* HomePage
* UserPage

**Home**
* NavBar
* Pins

**UserPage**
* UserStats
* UserBoards
* UserPins

**SearchResultPage**
* NavBar
* UsersStats


# Routes

| **Path**  | **Component** |
| ------------- | ------------- |
| '/'  | 'Homepage'  |
| '/sign-up'  | 'AuthFormContainer'  |
| '/sign-in'  | 'AuthFormContainer'  |
| '/:userName'  | 'UserPage'  |
| '/:userName/boards'  | 'Board'  |
| '/:userName/:boardName'  | 'Board'  |
| '/:userName/pins'  | 'Pins'  |
| '/pin/:pinId'  | 'Pins'  |
