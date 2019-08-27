import { createGlobalStyle } from "styled-components";

export const AppStyles = createGlobalStyle`
    * {
        box-sizing: border-box;
    }

    html,body {
        margin: 0;
        padding: 0;
    }

    body {
        background-color: #EAE7DC;
        font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Oxygen',
            'Ubuntu', 'Cantarell', 'Fira Sans', 'Droid Sans', 'Helvetica Neue',
            sans-serif;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
    }
`;
