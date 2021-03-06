import React, { Component } from 'react';
import Rating from './Rating';
import { Link } from 'react-router-dom'

class Product extends Component {

    constructor() {
        super();
    }
    
    render() {
        const { product } = this.props;
        return (
            <div className="featured-product-item">
                <div style={{ "background-image": "url('/images/products/p1.jpg')" }} className="featured-product-item-image"></div>
                <div className="title">{product.productName}</div>
                <div className="description">{product.productCategory}</div>
                <div className="description">{product.description}</div>
                <div className="price">Price - {product.price}$</div>
                <Rating rating={product.averageRating} numReviews={product.noOfReviews}></Rating>
                <Link to={'/product/' + product.productId}><button>View Item</button></Link>
            </div >
        );
    }
}

export default Product;
