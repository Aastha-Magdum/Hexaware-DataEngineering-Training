import pandas as pd
import numpy as np

df = pd.read_csv("players.csv")

# 1
print(df)

# 2
print(df)

# 3
print("Total Players:", len(df))

# 4
print(df.loc[df["runs"].idxmax()])

# 5
print(df.loc[df["runs"].idxmin()])

# 6
print("Average Runs:", df["runs"].mean())

# 7
print(df[df["runs"] > 600])

# 8
print(df[df["runs"] < 500])

# 9
print(df["team"].value_counts())

# 10
print(df.groupby("team")["runs"].sum())

# 11
print(df.groupby("team")["runs"].sum().idxmax())

# 12
print(df.groupby("team")["runs"].sum().idxmin())

# 13
print(df.loc[df["fours"].idxmax()])

# 14
print(df.loc[df["sixes"].idxmax()])

# 15
print(df["fours"].sum())

# 16
print(df["sixes"].sum())

# 17
players = list(df["player_name"])
players.sort()
print(players)

# 18
teams = set(df["team"])
print(teams)

# 19
team_runs = dict(df.groupby("team")["runs"].sum())
print(team_runs)

# 20
player_runs = dict(zip(df["player_name"], df["runs"]))
print(player_runs)

# 21
def find_top_scorer():
    return df.loc[df["runs"].idxmax()]
print(find_top_scorer())

# 22
def calculate_average_runs():
    return df["runs"].mean()
print(calculate_average_runs())

# 23
def find_best_team():
    return df.groupby("team")["runs"].sum().idxmax()
print(find_best_team())

# 24
def find_total_boundaries():
    return df["fours"].sum() + df["sixes"].sum()
print(find_total_boundaries())

# 28
runs = np.array(df["runs"])
print("Total Runs:", np.sum(runs))
print("Average Runs:", np.mean(runs))
print("Maximum Runs:", np.max(runs))
print("Minimum Runs:", np.min(runs))
print("Standard Deviation:", np.std(runs))
print("Median:", np.median(runs))

# 29
print(df)

# 30
print(df.sort_values("runs", ascending=False).head())

# 31
print(df.sort_values("runs", ascending=False))

# 32
print(df.groupby("team")["runs"].sum())

# 33
print(df.groupby("team")["runs"].mean())

# 34
print(df[df["runs"] > 600])

# 35
print(df.groupby("team")["runs"].sum().idxmax())

# Cricket Report Generation
with open("cricket_report.txt", "w") as file:
    file.write("Total Players: " + str(len(df)) + "\n")
    file.write("Total Runs: " + str(df["runs"].sum()) + "\n")
    file.write("Average Runs: " + str(df["runs"].mean()) + "\n")
    file.write("Highest Scorer: " + str(df.loc[df["runs"].idxmax()]["player_name"]) + "\n")
    file.write("Lowest Scorer: " + str(df.loc[df["runs"].idxmin()]["player_name"]) + "\n\n")
    file.write("Team Wise Runs:\n")
    file.write(str(df.groupby("team")["runs"].sum()))
    file.write("\n\n")
    file.write("Top 5 Players:\n")
    file.write(str(df.sort_values("runs", ascending=False).head()))
    file.write("\n\n")
    file.write("Most Fours: " + str(df.loc[df["fours"].idxmax()]["player_name"]) + "\n")
    file.write("Most Sixes: " + str(df.loc[df["sixes"].idxmax()]["player_name"]) + "\n")
print("cricket_report.txt generated successfully")

# 36
top_players = df[df["runs"] > 600]
top_players.to_csv("top_players.csv", index=False)

# 37
team_summary = df.groupby("team").agg(
    Total_Runs=("runs", "sum"),
    Average_Runs=("runs", "mean"),
    Player_Count=("player_id", "count")
)
team_summary.to_csv("team_summary.csv")

# 38
while True:
    print("\nSmart Cricket Analytics System")
    print("1. Player Analysis")
    print("2. Team Analysis")
    print("3. Boundary Analysis")
    print("4. Export Reports")
    print("5. Exit")

    choice = input("Enter your choice: ")

    if choice == "1":
        print("\nPlayer Analysis")
        print("Highest Run Scorer:")
        print(df.loc[df["runs"].idxmax()])
        print("\nLowest Run Scorer:")
        print(df.loc[df["runs"].idxmin()])
        print("\nAverage Runs:")
        print(df["runs"].mean())
        print("\nPlayers Scoring More Than 600 Runs:")
        print(df[df["runs"] > 600])
        print("\nPlayers Scoring Less Than 500 Runs:")
        print(df[df["runs"] < 500])

    elif choice == "2":
        print("\nTeam Analysis")
        print("Players By Team:")
        print(df["team"].value_counts())
        print("\nTotal Runs By Team:")
        print(df.groupby("team")["runs"].sum())
        print("\nTeam With Highest Runs:")
        print(df.groupby("team")["runs"].sum().idxmax())
        print("\nTeam With Lowest Runs:")
        print(df.groupby("team")["runs"].sum().idxmin())

    elif choice == "3":
        print("\nBoundary Analysis")
        print("Player With Most Fours:")
        print(df.loc[df["fours"].idxmax()])
        print("\nPlayer With Most Sixes:")
        print(df.loc[df["sixes"].idxmax()])
        print("\nTotal Fours:")
        print(df["fours"].sum())
        print("\nTotal Sixes:")
        print(df["sixes"].sum())

    elif choice == "4":
        top_players = df[df["runs"] > 600]
        top_players.to_csv("top_players.csv", index=False)
        team_summary = df.groupby("team").agg(
            Total_Runs=("runs", "sum"),
            Average_Runs=("runs", "mean"),
            Player_Count=("player_id", "count")
        )
        team_summary.to_csv("team_summary.csv")

        with open("cricket_report.txt", "w") as file:
            file.write("Cricket Analytics Report\n")
            file.write("Total Players: " + str(len(df)) + "\n")
            file.write("Total Runs: " + str(df["runs"].sum()) + "\n")
            file.write("Average Runs: " + str(df["runs"].mean()) + "\n")
            file.write("Highest Scorer: " + str(df.loc[df["runs"].idxmax()]["player_name"]) + "\n")
            file.write("Lowest Scorer: " + str(df.loc[df["runs"].idxmin()]["player_name"]) + "\n\n")
            file.write("Team Wise Runs:\n")
            file.write(str(df.groupby("team")["runs"].sum()))
            file.write("\n\n")
            file.write("Top 5 Players:\n")
            file.write(str(df.sort_values("runs", ascending=False).head()))
            file.write("\n\n")
            file.write("Most Fours: " + str(df.loc[df["fours"].idxmax()]["player_name"]) + "\n")
            file.write("Most Sixes: " + str(df.loc[df["sixes"].idxmax()]["player_name"]) + "\n")
        print("Reports exported successfully")

    elif choice == "5":
        print("Program ended")
        break

    else:
        print("Invalid choice")