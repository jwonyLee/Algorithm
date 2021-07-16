#include <iostream>
#include <vector>

using namespace std;

int row, col;
int adj[22][22];
string input;
bool alphabet[26];
bool visited[22][22];
int answer = 0;
int dx[4] = { 1, 0, -1, 0 };
int dy[4] = { 0, 1, 0, -1 };

void dfs(int x, int y, int total) {
	answer = max(answer, total);

	for (int i = 0; i < 4; i++) {
		int nx = x + dx[i];
		int ny = y + dy[i];

		if (nx < 0 || nx >= col || ny < 0 || ny >= row) {
			continue;
		}
		if (visited[ny][nx]) {
			continue;
		}
		if (alphabet[adj[ny][nx]]) {
			continue;
		}
		visited[ny][nx] = true;
		alphabet[adj[ny][nx]] = true;
		dfs(nx, ny, total + 1);
		alphabet[adj[ny][nx]] = false;
		visited[ny][nx] = false;
	}
}

int main() {
	cin >> row >> col;

	for (int i = 0; i < row; i++) {
		cin >> input;
		for (int j = 0; j < col; j++) {
			adj[i][j] = input[j] - 'A';
		}
	}

	visited[0][0] = true;
	alphabet[adj[0][0]] = true;
	dfs(0, 0, 1);
	cout << answer;
	return 0;
}