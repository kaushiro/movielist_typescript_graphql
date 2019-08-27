import styled from "styled-components";

import { MovieCardStyled } from "./components/MovieCard/styles";

export const MoviesPage = styled.div`
  padding: 0 1rem;
  display: flex;
  flex-wrap: wrap;
  width: 100%;
  height: 100%;
  max-width: 1200px;
  margin: auto;

  ${MovieCardStyled} {
    width: 20%;
  }
`;
