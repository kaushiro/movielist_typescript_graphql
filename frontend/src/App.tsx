import React, { useState } from "react";
import ApolloClient from "apollo-boost";
import { ApolloProvider } from "@apollo/react-hooks";

import { AppStyles } from "./App.styles";
import Header from "./components/Header";
import WatchList from "./components/WatchList";
import Movies from "./screens/Movies";

const client = new ApolloClient({
  uri: "http://localhost:5000"
});

const App: React.FC = () => {
  const [isWatchListOpen, setIsWatchListOpen] = useState(false);

  return (
    <React.Fragment>
      <AppStyles />
      <ApolloProvider client={client}>
        <Header onWatchListClick={() => setIsWatchListOpen(!isWatchListOpen)} />
        <WatchList
          isOpen={isWatchListOpen}
          onWatchListClose={() => setIsWatchListOpen(false)}
        />
        <Movies />
      </ApolloProvider>
    </React.Fragment>
  );
};

export default App;
