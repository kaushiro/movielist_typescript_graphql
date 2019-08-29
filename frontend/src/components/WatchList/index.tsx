import React from "react";
import { useQuery, useMutation } from "@apollo/react-hooks";
import { GET_WATCHLIST, REMOVE_MOVIE } from "../../models/movies/queries";
import WatchListItem from "./components/WatchListItem";
import { useTransition } from "react-spring";
import {
  WatchListSideBar,
  WatchListHeader,
  WatchListItems,
  WatchListFooter,
  CloseButton
} from "./styles";

interface IWatchListProps {
  isOpen: boolean;
  onWatchListClose: () => void;
}

const WatchList: React.FC<IWatchListProps> = ({ isOpen, onWatchListClose }) => {
  // Ignore this, handles the slidey in animation for the watch list side bar
  const entryTransition = useTransition(isOpen, null, {
    from: { transform: "translateX(100%" },
    enter: { transform: "translateX(0)" },
    leave: { transform: "translateX(100%)" }
  });
  const { loading, error, data } = useQuery(GET_WATCHLIST);
  const [handleMovieClick] = useMutation(REMOVE_MOVIE);
  if(loading) {
    return <p>Loading...</p>
  }
  if(error) {
    return <p>Error loading movies....</p>
  }
  return (
    <React.Fragment>
      {entryTransition.map(
        ({ item, key, props }) =>
          item && (
            <WatchListSideBar key={key} style={props}>
              <WatchListHeader>
                <CloseButton onClick={onWatchListClose}>close</CloseButton>
              </WatchListHeader>

              <WatchListItems>
              {data.watchlist && data.watchlist.map((movie:any):any => (
                <WatchListItem
                  key={movie.id}
                  movie={movie}
                  onClick={() => handleMovieClick({variables: { id: movie.id }})}
                />
              ))}
              </WatchListItems>
              <WatchListFooter>{/* Footer */}</WatchListFooter>
            </WatchListSideBar>
          )
      )}
    </React.Fragment>
  );
};

export default WatchList;
