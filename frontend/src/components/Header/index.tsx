import React from "react";
import { HeaderStyled, Sitename, NavigationStyled } from "./styles";

interface IHeaderProps {
  onWatchListClick: () => void;
}

const Header: React.FC<IHeaderProps> = ({ onWatchListClick }) => {
  return (
    <HeaderStyled>
      <Sitename>moviewatch</Sitename>
      <NavigationStyled>
        <ul>
          <li>
            <button onClick={onWatchListClick}>watch list</button>
          </li>
        </ul>
      </NavigationStyled>
    </HeaderStyled>
  );
};

export default Header;
