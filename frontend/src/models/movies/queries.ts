import { gql } from "apollo-boost";


export const GET_MOVIES = gql `
  {
    movies {
      id
      title
      year
      description
      director
      imdbRating
      runTime
      thumbnail
    }
  }
`;

export const ADD_MOVIE = gql `
mutation watchlist($id: ID!) {
	watchMovie(movieID:$id) {
		id
		title
		year
		description
		director
		imdbRating
		runTime
		thumbnail
	}
}
`;

export const REMOVE_MOVIE = gql `
mutation watchlist($id: ID!) {
	deleteMovie(movieID:$id) {
    id
		title
		year
		description
		director
		imdbRating
		runTime
		thumbnail
  }
}
`;
export const GET_WATCHLIST = gql `
  {
    watchlist {
      id
      title
      year
      description
      director
      imdbRating
      runTime
      thumbnail
    }
  }
`;