
### Usage
Set your input in a file called input.json.
You can use the default file that comes in this repository.
The data is an array of matches. Each match is a hash where
the key is the team's name, and the value its result in that match.
Example:
```json
[
  {
    "a": "3",
    "b": "1"
  },
  {
    "c": "0",
    "d": "0"
  },
  {
    "a": "1",
    "c": "1"
  },
  {
    "b": "2",
    "d": "3"
  },
  {
    "b": "3",
    "c": "1"
  }
]
```
Each hash must contain only two key pairs.
Check it out to see how the data is represented.
```bash
ruby run.rb
```
At the end, the script will output a table with the final scores
of the tournament.

### Activity: Football Tournament
Statement: Let's create a football tournament with 
4 teams playing against each other. 
Each team should have a name and all the teams 
will play matches against each other.
If a team wins the match, it receives 3 points, 
if it ties it receives 1 point and if it loses, 
it receives no point.
Below are the scores for the tournament.
```
- Team A 3 x 1 Team B
- Team C 0 x 0 Team D
- Team A 1 x 1 Team C
- Team B 2 x 3 Team D
- Team A 2 X 1 Team D
- Team B 3 x 1 Team C
```
Create a program that receives these match results 
and displays the final tournament standings table 
in order (first team with the most points received;
last team with the least points received).

