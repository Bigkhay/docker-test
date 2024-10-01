import express, { Request, Response } from "express";

// Initialize the express application
const app = express();

// Define the port
const PORT = process.env.PORT || 3000;

// Root route
app.get("/", (req: Request, res: Response) => {
  res.send("Hello, KhAY!!!!!");
});

// A sample API route
app.get("/api", (req: Request, res: Response) => {
  res.json({ message: "Hello from the API!" });
});

// Start the server
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
