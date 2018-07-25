import React from 'react';
import { Switch, Route } from 'react-router-dom';

import HomeScreen from './Components/HomeScreen/HomeScreen';

export default function routes() {
    return(
        <Switch>
            <Route path='/' component={HomeScreen} exact />
        </Switch>
    )
}