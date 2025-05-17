# EventPulse - Real-Time RSVP & Feedback Platform

A full-stack application that allows event hosts to create events, manage RSVPs, and collect real-time feedback from attendees.

## Features

- User authentication (signup, login) with different roles (host, attendee)
- Event creation and management
- RSVP functionality with deadlines and attendance limits
- Event check-in system
- Real-time feedback stream
- Analytics dashboard for hosts

## Tech Stack

- **Frontend**: React.js
- **Backend**: Node.js, Express.js
- **Database**: MongoDB
- **Real-time**: Socket.io (for live feedback)

## Prerequisites

Before you begin, ensure you have the following installed:
- Node.js (v14 or higher)
- npm or yarn
- MongoDB (local or Atlas account)

## Getting Started

### Setting up the Backend

1. Navigate to the server directory:
   ```
   cd server
   ```

2. Install dependencies:
   ```
   npm install
   ```

3. Create a `.env` file based on the example:
   ```
   cp env.example .env
   ```

4. Update the `.env` file with your own values:
   - Set `MONGODB_URI` to your MongoDB connection string
   - Set `JWT_SECRET` to a secure random string

5. Start the server:
   ```
   npm run dev
   ```

### Setting up the Frontend

1. Navigate to the client directory:
   ```
   cd client
   ```

2. Install dependencies:
   ```
   npm install
   ```

3. Create a `.env` file in the client directory:
   ```
   REACT_APP_API_URL=http://localhost:5000/api
   ```

4. Start the client:
   ```
   npm start
   ```

## API Endpoints

### Authentication
- `POST /api/auth/register` - Register a new user
- `POST /api/auth/login` - Login
- `GET /api/auth/me` - Get current user profile

### Events
- `GET /api/events` - Get all events
- `POST /api/events` - Create a new event (host only)
- `GET /api/events/:id` - Get a specific event
- `PUT /api/events/:id` - Update an event (host only)
- `DELETE /api/events/:id` - Delete an event (host only)
- `GET /api/events/:id/attendance` - Get event attendance stats (host only)

### RSVPs
- `POST /api/events/:id/rsvp` - Create or update an RSVP
- `POST /api/events/:id/rsvp/checkin` - Check in to an event
- `GET /api/events/:id/rsvp` - Get all RSVPs for an event (host only)
- `GET /api/events/:id/rsvp/me` - Get current user's RSVP

### Feedback
- `POST /api/events/:id/feedback` - Create feedback
- `GET /api/events/:id/feedback` - Get all feedback for an event
- `PUT /api/events/:id/feedback/:feedbackId/pin` - Pin/unpin feedback (host only)
- `GET /api/events/:id/feedback/analytics` - Get feedback analytics (host only)

## Next Steps for Development

1. Set up the React frontend with screens for:
   - Authentication (signup/login)
   - Event listing and details
   - Event creation/editing (for hosts)
   - RSVP interface
   - Check-in functionality
   - Feedback submission
   - Real-time feedback feed
   - Analytics dashboard

2. Implement Socket.io for real-time features:
   - Live RSVP counts
   - Live check-in counts
   - Real-time feedback stream

3. Deploy the application:
   - Frontend: Netlify, Vercel, or similar
   - Backend: Heroku, Railway, or similar
   - Database: MongoDB Atlas 