import React from 'react';
import { Switch, Route } from 'react-router-dom';

import HomeScreen from './Components/HomeScreen/HomeScreen';
import GameReviewPage from './Components/GameReviewPage/GameReviewPage';

export default function routes() {
    return(
        <Switch>
            <Route path='/' component={HomeScreen} exact />
            <Route path='/reviewPage/:id' component={GameReviewPage} />
        </Switch>
    )
}