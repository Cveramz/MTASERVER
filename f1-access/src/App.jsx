import React from 'react';
import Paper from '@mui/material/Paper';
import Typography from '@mui/material/Typography';

function App() {
  
  const youtubeIcon = 'https://cdn-icons-png.flaticon.com/256/1384/1384060.png';
  const youtubeMusicIcon = 'https://1000logos.net/wp-content/uploads/2021/12/YouTube-Music-Logo.png';
  const spotifyIcon = 'https://storage.googleapis.com/pr-newsroom-wp/1/2018/11/Spotify_Logo_RGB_Green.png';

  
  const youtubeLink = 'https://www.youtube.com/';
  const youtubeMusicLink = 'https://music.youtube.com/';
  const spotifyLink = 'https://www.spotify.com/';

  return (
    <div className="App" style={{ height: '100vh', width: '100vw', display: 'flex', justifyContent: 'center', alignItems: 'center', backgroundColor: 'black', color: 'white' }}>
      <Paper elevation={3} style={{ padding: '40px', textAlign: 'center', width: '500px', height: '500px' }}>
        <Typography variant="h4" component="div">
          Blue Gaming Server
        </Typography>
        <Typography variant="h6" component="div">
          IP: 154.12.248.164:22208
        </Typography>
        <hr />
        <Typography variant="h5" component="div">
          Choose a Music Platform
        </Typography>
        
        
        <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', marginTop: '20px' }}>
          <a href={youtubeLink} rel="noopener noreferrer">
            <img src={youtubeIcon} alt="YouTube Icon" style={{ width: '100px', height: '100px', marginBottom: '10px' }} />
          </a>
          <a href={youtubeMusicLink} rel="noopener noreferrer">
            <img src={youtubeMusicIcon} alt="YouTube Music Icon" style={{ width: '150px', height: '120px', marginBottom: '10px' }} />
          </a>
          <a href={spotifyLink} rel="noopener noreferrer">
            <img src={spotifyIcon} alt="Spotify Icon" style={{ width: '200px', height: '70px', marginBottom: '10px' }} />
          </a>
        </div>

        
        <Typography variant="body2" style={{ marginTop: '20px' }}>
          * Algunos servicios requieren iniciar sesión.
        </Typography>
      </Paper>
    </div>
  );
}

export default App;
