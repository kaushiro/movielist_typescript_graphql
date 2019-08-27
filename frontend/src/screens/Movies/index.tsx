import React from "react";
import { useQuery, useMutation } from "@apollo/react-hooks";
import { GET_MOVIES, ADD_MOVIE } from "../../models/movies/queries";
import { MoviesPage } from "./styles";
import MovieCard from "./components/MovieCard";

const Movies: React.FC = () => {
  const { loading, error, data } = useQuery(GET_MOVIES);
  const [handleMovieClick] = useMutation(ADD_MOVIE);
   
  if(loading) {
    return <p>Loading...</p>
  }
  if(error) {
    return <p>Error loading movies....</p>
  }
  return (
    <MoviesPage>
      {data.movies && data.movies.map((movie:any):any => (
        <MovieCard
          key={movie.id}
          movie={movie}
          onClick={() => handleMovieClick({variables: { id: movie.id }})}
        />
      ))}
    </MoviesPage>
  );
};

export default Movies;
