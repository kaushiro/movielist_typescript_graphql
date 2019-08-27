import styled from "styled-components";

export const PosterOverlay = styled.button`
  position: absolute;
  top: 0px;
  left: 0px;
  display: none;
  height: 100%;
  width: 100%;
  justify-content: center;
  align-items: center;
  background: none;
  outline: 0;
  border: 0;
  cursor: pointer;

  p {
    color: #fff;
    font-weight: bold;
    font-size: 1.5rem;
  }
`;

export const MoviePosterWrapper = styled.div`
  position: relative;
  display: inline-block;
`;

export const MovieCardStyled = styled.div`
  display: inline-block;
  margin-bottom: 2rem;

  img {
    transition: 0.3s ease filter;
  }

  ${MoviePosterWrapper}:hover {
    img {
      filter: blur(2px) brightness(0.5);
    }

    ${PosterOverlay} {
      display: flex;
    }
  }
`;

export const MovieTitle = styled.h3`
  margin: 0;
  font-weight: bold;
  margin-top: 0.5rem;
  color: #8e8d8a;
`;

export const Director = styled.p`
  font-size: 0.8rem;
  margin: 0;
`;

export const Rating = styled.p`
  padding-right: 0.5rem;
`;

export const MovieInfoContainer = styled.div`
  display: flex;
  flex-wrap: wrap;
  padding-right: 1rem;

  ${MovieTitle} {
    flex-basis: 100%;
  }

  ${Director} {
    flex-basis: 100%;
  }

  p {
    font-size: 0.8rem;
    margin: 0;
    margin-top: 5px;
  }
`;
