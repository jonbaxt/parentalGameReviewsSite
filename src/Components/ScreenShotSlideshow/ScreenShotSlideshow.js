import React from 'react';
import Slider from 'react-slick';
import { connect } from 'react-redux';

import './ScreenShotSlideshow.css';

class ScreenShotSlideshow extends React.Component {
    render() {
        let settings = {
            dots: false,
            // dotsClass: '',
            infinite: true,
            autoplay: true,
            autoplaySpeed: 4000,
            speed: 500,
            slidesToShow: 1,
            slidesToScroll: 1
        };
        let shots = this.props.gameScreenShots.map( (element) => {
            if(element.gameinfo_id === this.props.gameId){ 
            return (<div className='imageCont' key={element.screenshot_id} ><img src={'https://' + element.image_url} alt='' /></div>)
            } else {
                return '';
            }
        })
        return (
            <div><span>
                <link rel="stylesheet" type="text/css" charSet="UTF-8" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.min.css" />
                <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick-theme.min.css" />
            </span>
                <Slider className='sliderFormat' {...settings}>
                    {shots}
                </Slider>
            </div>
        )
    }
}
let mapStateToProps = (state) => {
    return {
        gameScreenShots: state.gameScreenShots
    }
}
export default connect(mapStateToProps, null)(ScreenShotSlideshow);