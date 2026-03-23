# bol PRD

## 1. Executive Summary
"bol" is a terminal-based Gacha calculator specifically designed for the game "Trickcal: Chibi Go". It aims to provide players with a simple yet accurate tool to estimate their chances of obtaining desired characters or items, accounting for the game's specific gacha mechanics and pity systems.

## 2. Problem Statement & Goals
### Problem
Gacha games like Trickcal often involve complex probability structures and pity mechanisms that make it difficult for players to intuitively understand their actual success rates. Players often wonder how many pulls they should save or what their realistic chances are with their current resources.

### Goals
- Provide a CLI tool to calculate the probability of success over a given number of pulls.
- Implement the specific gacha rates and pity logic of "Trickcal: Chibi Go".
- Offer a lightweight and fast utility for power users who prefer the terminal.

## 3. User Stories
- **Pull Estimation:** As a player, I want to know the probability of getting at least one 3-star character within a certain number of pulls.
- **Resource Planning:** As a player, I want to see how many pulls I need to reach a 90% (or other specific) confidence level of success.
- **Pity Integration:** As a player, I want to include my current pity count in the calculation to see how it improves my near-term chances.
- **Comparison:** As a player, I want to compare the efficiency of different gacha banners if their rates differ.

## 4. Functional Requirements
| ID | Requirement | Description |
|---|---|---|
| FR-1 | Rate Configuration | Allow users to specify the target character's drop rate (e.g., 0.75% for pickup). |
| FR-2 | Pull Input | Accept the number of pulls or the amount of currency available. |
| FR-3 | Pity Logic | Calculate probabilities including the "Trickcal" pity system (e.g., guaranteed 3-star after X pulls). |
| FR-4 | Statistical Output | Display cumulative probability of success for 1, 10, 50, 100, and N pulls. |
| FR-5 | CLI Interface | Provide a clean command-line interface with flags for quick calculations. |

## 5. Technical Constraints & Success Metrics
### Technical Constraints
- **Language:** Written in Rust for performance and reliability.
- **Environment:** Must run as a standalone binary on Linux, macOS, and Windows.
- **Dependencies:** Keep external crates to a minimum to ensure small binary size and fast compilation.

### Success Metrics
- **Accuracy:** Calculations must match the theoretical mathematical expectations of the game's gacha system.
- **Usability:** A user should be able to get a result with a single command (e.g., `bol --pulls 100`).
- **Performance:** Calculations should be nearly instantaneous.
