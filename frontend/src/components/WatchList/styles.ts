import styled from "styled-components";
import { animated } from "react-spring";

export const WatchListSideBar = styled(animated.div)`
  position: fixed;
  top: 0px;
  right: 0px;
  height: 100%;
  width: 100%;
  background-color: #d8c3a5;
  width: 25%;
  margin-left: auto;
  z-index: 2;
  display: grid;
  grid-template-rows: 1fr auto;
  grid-template-columns: 100%;
`;

export const CloseButton = styled.button`
  border: 0;
  outline: 0;
  height: 100%;
  cursor: pointer;
  font-size: 1.5rem;
  padding: 0 1.5rem;
  background: none;
  color: #eae7dc;
`;

export const WatchListHeader = styled.div`
  display: flex;
  justify-content: flex-end;
  height: 80px;
  margin-bottom: 1rem;
`;

export const WatchListItems = styled.div`
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  overflow: auto;
`;

export const WatchListFooter = styled.div``;
