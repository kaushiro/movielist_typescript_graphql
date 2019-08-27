import React from "react";

import {
  MovieCardStyled,
  MoviePosterWrapper,
  PosterOverlay,
  MovieTitle,
  MovieInfoContainer,
  Director,
  Rating
} from "./styles";

interface MovieProps {
  movie: any;
  onClick: () => Promise<any>;
}
const MovieCard: React.FC<MovieProps> = ({ movie, onClick }) => {
  return (
    <MovieCardStyled>
      <MoviePosterWrapper>
        <img src={movie.thumbnail} alt={`poster for ${movie.title}`} />
        <PosterOverlay onClick={onClick}>
          <p>Watch</p>
        </PosterOverlay>
      </MoviePosterWrapper>
      <MovieInfoContainer>
        <MovieTitle>{movie.title}</MovieTitle>
        <Director>{movie.director}</Director>
        <Rating>
          <span role="img" aria-label="movie rating">
            ⭐
          </span>
          {movie.imdbRating}
        </Rating>
        <p>
          <span role="img" aria-label="movie duration">
            🕐
          </span>
          {movie.runTime}
        </p>
      </MovieInfoContainer>
    </MovieCardStyled>
  );
};

export default MovieCard;
