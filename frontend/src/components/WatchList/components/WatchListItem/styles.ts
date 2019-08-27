import styled from "styled-components";

export const WatchCard = styled.div`
  background-color: #eae7dc;
  padding: 1rem;
  display: flex;
  align-items: center;
  width: 80%;
  border-radius: 2px;
  margin-bottom: 1rem;

  img {
    display: block;
    margin-right: 1rem;
    flex-basis: 25%;
    width: 25px;
  }
`;

export const CardInfo = styled.div`
  color: #8e8d8a;
  display: flex;
  flex-wrap: wrap;
  flex-basis: 75%;
  align-items: center;

  h2 {
    width: 100%;
    margin: 0.5rem 0;
  }

  p {
    margin: 0;
    margin-right: 0.5rem;
  }
`;
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
`;
export const MovieCardStyled = styled.div`

  img {
    transition: 0.3s ease filter;
  }

  ${MoviePosterWrapper}:hover {
    img, div {
      filter: blur(2px) brightness(0.5);
    }

    ${PosterOverlay} {
      display: flex;
    }
  }
`;