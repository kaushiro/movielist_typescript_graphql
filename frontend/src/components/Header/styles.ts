import styled from "styled-components";

export const HeaderStyled = styled.header`
  height: 80px;
  display: flex;
  align-items: center;
  border-bottom: 1px solid #d8d5ca;
  position: sticky;
  top: 0;
  background-color: #eae7dc;
  z-index: 1;
  margin-bottom: 2rem;
`;

export const Sitename = styled.h1`
  color: #e85a4f;
  margin: 0;
  padding-left: 1rem;
`;

export const NavigationStyled = styled.nav`
  margin-left: auto;
  height: 100%;

  ul,
  li,
  button {
    height: 100%;
  }

  ul {
    margin: 0;
    padding: 0;
    list-style-type: none;
  }

  button {
    display: inline-block;
    background: none;
    border: none;
    color: #8e8d8a;
    cursor: pointer;
    font-size: 1.5rem;
    padding: 0 1rem;
    transition: 0.2s ease;
  }

  button:hover {
    background-color: #8e8d8a;
    color: #eae7dc;
  }
`;
