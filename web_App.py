from sklearn.preprocessing import LabelBinarizer
from tensorflow import keras
from PIL import Image

import numpy as np
import pandas as pd
import streamlit as st
import tensorflow as tf

st.set_page_config(page_title='ASL Recognition')
st.title('Sign Language Recognition')
st.markdown(""" 
    <style>
    #MainMenu {visibility: hidden;}
    footer {visibility: hidden;}
    </style> 
    """, unsafe_allow_html=True)

@st.cache(allow_output_mutation=True)
def get_best_model():
    best_model = keras.models.load_model('models/experiment-dropout-augmentation-0/saved_model.pb')
    return best_model

@st.cache
def get_label_binarizer():
    train_df = pd.read_csv('sign_mnist_train.csv')
    y = train_df['label']
    label_binarizer = LabelBinarizer()
    y = label_binarizer.fit_transform(y)
    return label_binarizer

def preprocess_image(image, image_file, best_model, label_binarizer):
    
    image = tf.reshape(image, [image.shape[0], image.shape[1], 1])
    image = image/255
    image = tf.image.resize(image, [28, 28], preserve_aspect_ratio=True)
    
    preprocessed_image = np.ones((1, 28, 28, 1))
    preprocessed_image[0, :image.shape[0], :image.shape[1], :] = image
    
    prediction = best_model.predict(preprocessed_image)
    
    index_to_letter_map = {i:chr(ord('a') + i) for i in range(26)}
    letter = index_to_letter_map[label_binarizer.inverse_transform(prediction)[0]]

    return letter

best_model = get_best_model()
label_binarizer = get_label_binarizer()


st.subheader('Convert Image to English letter')
image_file = st.file_uploader('Choose the ASL Image', ['jpg', 'png'])

if image_file is not None:
    image = Image.open(image_file).convert('L')
    image = np.array(image, dtype='float32')
    letter = preprocess_image(image, image_file, best_model, label_binarizer)
    st.write(f'The image is predicted as {letter}')

st.subheader('Convert images to English sentence')
sentence_image_files = st.file_uploader('Select the ASL Images', ['jpg', 'png'], accept_multiple_files = True)

if len(sentence_image_files) > 0:
    sentence = ''
    for image_file in sentence_image_files:
        image = Image.open(image_file).convert('L')
        image = np.array(image, dtype='float32')
        letter = preprocess_image(image, image_file, best_model, label_binarizer)
        sentence += letter
    st.write(f'The sentence is predicted as {sentence}')