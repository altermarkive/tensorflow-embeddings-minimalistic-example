# TensorFlow Embeddings: Minimalistic Example

This code is a minimalistic example of how to use TensorBoard visualization
of embeddings saved in a TensorFlow session.

Embedding is a mapping of data set from a high-dimensional to a low-dimensional vector space meant to preserve similarity between the vectors as a spatial distance. Many examples demonstrating the visualization of embeddings with TensorBoard rely on pre-generated files & data. However, I was interested in an example with a more minimalistic data set but guiding me how to create everything necessary for a visualization. In the end I created such an example myself and decided to share it in this video. You can find the tutorial [here](https://stackoverflow.com/a/47281641/5223524).

The only dependency to run this example is to have Docker installed.

To run the example simply execute the `run.sh` script. Then, to view
the visualization of the embeddings go to [http://localhost:6006/#projector](http://localhost:6006/#projector).

![screenshot](screenshot.png)
