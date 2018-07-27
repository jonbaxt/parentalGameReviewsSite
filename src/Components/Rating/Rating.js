import React from 'react';

export default function Rating(props) {
    let rating = '';

    switch (props.rate) {
        case 1:
            return rating = (<span role='img'>🔥</span>);
        case 2:
            return rating = (<span role='img'>🔥🔥</span>);
        case 3:
            return rating = (<span role='img'>🔥🔥🔥</span>);
        case 4:
            return rating = (<span role='img'>🔥🔥🔥🔥</span>);
        case 5:
            return rating = (<span role='img'>🔥🔥🔥🔥🔥</span>);
        default:
            return '';
    }

    return (<span>{rating}</span>)
}

