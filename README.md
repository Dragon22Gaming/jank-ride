
# Jank Ride - Project Planning Document

## 🎮 Game Concept

**Jank Ride** is a simple, physics-based driving game inspired by *Hill Climb Racing*, with a janky aesthetic. You control a crudely-built car across unstable terrain, trying to collect fuel and coins without flipping over or breaking down.

- **Genre**: Physics-based driving / casual arcade
- **Engine**: Godot
- **Target Platform**: Desktop (HTML5 optional)
- **Art Style**: Sketchy, junkyard-engineering vibes
- **Tone**: Light, chaotic, and funny

---

## 🧠 Core Game Loop

1. Start on flat ground
2. Drive forward across bumpy terrain
3. Tilt to balance using throttle and brake
4. Collect coins and fuel pickups
5. Avoid flipping or running out of fuel
6. Reach checkpoints or go for high score (distance)

---

## 🔧 Core Features (Must-Have)

- [ ] Physics-based car with 2 wheels, body, and suspension
- [ ] Drive / Brake controls
- [ ] Terrain with hills and bumps
- [ ] Fuel bar + depletion over time
- [ ] Coins to collect
- [ ] Flip = instant death
- [ ] Game over screen

---

## 💡 Stretch Features (Nice to Have)

- [ ] Upgrades (engine, fuel tank, suspension)
- [ ] Unlockable vehicles
- [ ] Multiple levels (desert, cave, city)
- [ ] Parallax background
- [ ] High score system (distance or coins)

---

## 🗓 Weekly Timeline

### Week 1 – Setup & Core Movement
- [ ] Create repo + file structure
- [ ] Design rough car physics with movement
- [ ] Basic terrain collision
- [ ] Camera follows car

### Week 2 – Game Mechanics
- [ ] Add fuel bar + depletion
- [ ] Add coins and basic pickup logic
- [ ] Add flipping detection (death state)
- [ ] Simple UI (fuel + coin counters)

### Week 3 – Polish & Feedback
- [ ] Juice (particles, bounce, screen shake)
- [ ] Add a few sound effects
- [ ] Background elements (sky, parallax)
- [ ] Death/restart screen

### Week 4 – Content
- [ ] Build complete level
- [ ] Place coin and fuel pickups
- [ ] Add score or distance tracker
- [ ] Test balance (how long fuel lasts, etc.)

### Week 5 – Devlogs & Packaging
- [ ] Record weekly devlog (~5 mins)
- [ ] Polish and package the game
- [ ] Export builds (Windows/Web)
- [ ] Submit project + documentation

---

## 🧱 File Structure (Recommended)

```
.
├── assets
│   ├── images
│   └── sfx
├── cars
│   ├── default_car.tscn
│   └── car.gd
├── levels
│   └── test_track.tscn
├── scenes
│   ├── main_menu.tscn
│   ├── game.tscn
│   └── game_over.tscn
├── scripts
│   ├── game.gd
│   ├── ui.gd
│   └── terrain.gd
├── project.godot
└── README.md
```

---

## 🧠 Game Pillars

- **Simple to play, satisfying to master**
- **Funny failures are part of the fun**
- **Janky, sketchy, and a little chaotic**

---

## 🧪 Core Variables to Tweak

- Car weight, torque, and suspension stiffness
- Fuel rate vs pickup frequency
- Hill steepness and frequency
- Jump power (if any ramps)
- Gravity (might exaggerate it slightly)

---

## 🎥 Devlog Structure (Week 5)

Each ~5 min devlog includes:
1. **Title Card** – “Jank Ride – Devlog Week X”
2. **Quick Recap** – What was done this week
3. **Showcase** – In-game footage of the updates
4. **Challenges** – Talk about bugs or things you had to solve
5. **What’s next** – Quick preview of what’s coming

---
