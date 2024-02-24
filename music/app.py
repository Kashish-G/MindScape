from flask import Flask, render_template, request, redirect, url_for
import spotipy
import spotipy.oauth2 as oauth2
from spotipy.oauth2 import SpotifyOAuth
from spotipy.oauth2 import SpotifyClientCredentials
import random
import pandas as pd

app = Flask(__name__)

# Spotify API credentials
SPOTIPY_CLIENT_ID = '746eb9f6ddd94bac9a834eab96a9bc3b'
SPOTIPY_CLIENT_SECRET = 'dcd199ed105349f58bec17288bfc9a93'
SPOTIPY_REDIRECT_URI = 'http://localhost:5000/callback'

# Configure Spotipy
sp_oauth = SpotifyOAuth(SPOTIPY_CLIENT_ID, SPOTIPY_CLIENT_SECRET, SPOTIPY_REDIRECT_URI, scope='user-library-read')
MOOD_CSV_PATHS = {
    'angry': r'songs\angry.csv',
    'disgusted': r'songs\disgusted.csv',
    'fearful': r'songs\fearful.csv',
    'happy': r'songs\happy.csv',
    'neutral': r'songs\neutral.csv',
    'sad': r'songs\sad.csv',
    'surprised': r'songs\surprised.csv'
}
# Load the angry.csv file
angry_songs_df = pd.read_csv(r'songs\angry.csv')

@app.route('/')
def index():
    access_token = request.args.get('access_token', '')
    return render_template('index.html', access_token=access_token)

@app.route('/callback')
def callback():
    code = request.args.get('code')
    mood = request.args.get('mood')  # Get the mood from the query parameters
    token_info = sp_oauth.get_access_token(code)
    access_token = token_info['access_token']
    return redirect(url_for('play_song', access_token=access_token, mood=mood))  # Pass both access_token and mood


@app.route('/play_song/<access_token>/<mood>')
def play_song(access_token, mood):
    sp = spotipy.Spotify(auth=access_token)
    csv_path = MOOD_CSV_PATHS.get(mood.lower())
    
    if csv_path:
        # Load the CSV file
        df = pd.read_csv(csv_path)
        # Choose a random song name from the CSV file
        random_song_name = random.choice(df['Name'])
        
        # Search for the selected song on Spotify
        results = sp.search(q=random_song_name, type='track', limit=1)
        
        # Extract track details
        track_info = results['tracks']['items'][0]
        track_name = track_info['name']
        artist_name = track_info['artists'][0]['name']
        track_preview_url = track_info['preview_url']
        
        # Render the template to play the song
        return render_template('play_song.html', track_name=track_name, artist_name=artist_name, track_preview_url=track_preview_url)
    else:
        return "No songs available for the specified mood."

if __name__ == '__main__':
    app.run(debug=True)
   

# # Spotify API credentials
# SPOTIPY_CLIENT_ID = '746eb9f6ddd94bac9a834eab96a9bc3b'
# SPOTIPY_CLIENT_SECRET = 'dcd199ed105349f58bec17288bfc9a93'
# SPOTIPY_REDIRECT_URI = 'http://localhost:5000/callback'

# # Configure Spotipy
# sp_oauth = SpotifyOAuth(SPOTIPY_CLIENT_ID, SPOTIPY_CLIENT_SECRET, SPOTIPY_REDIRECT_URI, scope='user-library-read')
# MOOD_CSV_PATHS = {
#     'angry': r'songs\angry.csv',
#     'disgusted': r'songs\disgusted.csv',
#     'fearful': r'songs\fearful.csv',
#     'happy': r'songs\happy.csv',
#     'neutral': r'songs\neutral.csv',
#     'sad': r'songs\sad.csv',
#     'surprised': r'songs\surprised.csv'
# }

# def get_random_song(mood):
#     csv_path = MOOD_CSV_PATHS.get(mood.lower())
#     if csv_path: