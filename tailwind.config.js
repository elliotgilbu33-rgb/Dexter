/** @type {import('tailwindcss').Config} */
export default {
  content: ["./index.html", "./src/**/*.{js,ts,jsx,tsx}"],
  theme: {
    extend: {
      colors: {
        dexter: {
          bg: "#0a0a0f",
          surface: "#12121a",
          card: "#1a1a2e",
          border: "rgba(0, 212, 255, 0.1)",
          cyan: "#00d4ff",
          blue: "#0066ff",
          white: "rgba(255, 255, 255, 0.9)",
          dim: "rgba(255, 255, 255, 0.5)",
          red: "#ff3355",
          green: "#00ff88",
        },
      },
      fontFamily: {
        mono: ["JetBrains Mono", "monospace"],
        sans: ["Inter", "sans-serif"],
      },
      boxShadow: {
        glow: "0 0 20px rgba(0, 212, 255, 0.25)",
        "glow-lg": "0 0 40px rgba(0, 212, 255, 0.35)",
      },
      backdropBlur: {
        glass: "12px",
      },
    },
  },
  plugins: [],
};
