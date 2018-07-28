import React from 'react';

export default function Rating(props) {
    switch (props.rate) {
        case 1:
            return (<span role='img' aria-label='img'>🔥</span>);
        case 2:
            return (<span role='img' aria-label='img'>🔥🔥</span>);
        case 3:
            return (<span role='img' aria-label='img'>🔥🔥🔥</span>);
        case 4:
            return (<span role='img' aria-label='img'>🔥🔥🔥🔥</span>);
        case 5:
            return (<span role='img' aria-label='img'>🔥🔥🔥🔥🔥</span>);
        default:
            return (<span>No Rating Yet</span>);
    }
}

