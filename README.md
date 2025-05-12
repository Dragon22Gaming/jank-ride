# Jank Ride - 3D Tech Demo Planning Document

## 🎮 Project Concept

**Jank Ride** is a 3D car tech demo built in Godot, designed to explore vehicle physics and terrain interaction in a playful, low-stress environment. The focus is on having fun, learning about 3D development, and building a working physics-based vehicle that can navigate ramps, hills, and chaos.

- **Genre**: Tech demo / sandbox / physics sim
- **Engine**: Godot (3D)
- **Platform**: Desktop (Windows/Linux)
- **Tone**: Playful, janky, experimental
- **Goal**: Make a 3D car drive around and do dumb stuff

---

## 🧠 Core Features

- [ ] A functional car with working 'wheels'
- [ ] Bumpy test terrain with ramps and hills
- [ ] Camera that follows the car in 3D space
- [ ] Reset button (if car flips)
- [ ] Basic UI (maybe speed, maybe nothing)

---

## 💡 Stretch Features (Optional)

- [ ] Slow-motion button (for cinematic crashes)
- [ ] Car flip physics button
- [ ] Obstacles (cones, barrels, physics objects)
- [ ] Jump pads or launchers
- [ ] Screenshot button

---

## 🗓 Weekly Timeline

### Week 1 – Setup & Vehicle
- [ ] Setup 3D scene in Godot
- [ ] Import base vehicle mesh (or use placeholder cubes)
- [ ] Get car working with input
- [ ] Set up camera follow

### Week 2 – Terrain & Movement
- [ ] Design basic test terrain with hills and ramps
- [ ] Tweak car physics for bounce & fun
- [ ] Add flip detection + reset button

### Week 3 – Polish Pass
- [ ] Add sound effects (engine, crashes)
- [ ] Add visual effects (dust, skid marks, screen shake)
- [ ] Tweak terrain for better flow

### Week 4 – Add Toys
- [ ] Add interactable objects (cones, barrels)
- [ ] Maybe launchers or slingshot pads
- [ ] Add skybox / background elements

### Week 5 – Devlogs & Presentation
- [ ] Record devlogs or walkthrough of the project
- [ ] Export final demo build
- [ ] Submit with final reflection

---

## 🧱 Suggested File Structure
```
.
├── assets
│   ├── models
│   ├── sfx
│   └── textures
├── car
│   ├── CarBody.tscn
│   ├── CarBody.gd
├── scenes
│   ├── Main.tscn
│   └── Track.tscn
├── scripts
│   ├── car_controller.gd
│   └── camera.gd
├── README.md
└── project.godot
```

---

## 🎥 Devlog Format
Each weekly video (~5 min):
1. What you did
2. Show in-game footage
3. What worked / what broke
4. What’s coming next

---

## 🧠 Learning Outcome
- Learn Godot 3D and physics basics
- Play with terrain creation
- Practice input handling, 3D scene setup, and constraints
- Create something chaotic and fun without stress

---

**Let’s go drive a brick off a ramp and call it educational.**
