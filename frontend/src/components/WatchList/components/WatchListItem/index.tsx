import React from "react";

import { WatchCard, CardInfo, MovieCardStyled, MoviePosterWrapper, PosterOverlay } from "./styles";

interface MovieProps {
  movie: any;
  onClick: () => Promise<any>;
}
const WatchListItem: React.FC<MovieProps> = ({ movie, onClick }) => {
  return (

    <MovieCardStyled>
      <MoviePosterWrapper>
      <WatchCard>
          <img src={movie.thumbnail} />
        <CardInfo>
          <h2>{movie.title}</h2>
          <span role="img" aria-label="movie rating">
            ⭐
          </span>
          <p>{movie.imdbRating}</p>
          <span role="img" aria-label="movie duration">
            🕐
          </span>
          <p>{movie.runTime}</p>
        </CardInfo>
         
        
      </WatchCard>
      <PosterOverlay onClick={onClick}>
            <p>Remove</p>
          </PosterOverlay>  
      </MoviePosterWrapper>
      
    </MovieCardStyled>
  );
};

export default WatchListItem;
