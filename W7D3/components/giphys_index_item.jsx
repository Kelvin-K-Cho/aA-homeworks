import React from 'react';

// import GiphysIndexItem from './giphys_index_item';

function GiphysIndexItem({ giphy }) {
  return (
    <li className="giphy-li">
      <img src={giphy.images.fixed_height.url} />
    </li>
  );
}

export default GiphysIndexItem;
