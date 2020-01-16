class Solution:
    def rotate(self, matrix: [[int]]) -> None:
        """
        Do not return anything, modify matrix in-place instead.
        """
        length = len(matrix)
        matrixRange = range(length)
        for idx in range(length):
            for jdx in range(idx, length):
                if idx == jdx:
                    continue
                matrix[idx][jdx], matrix[jdx][idx] = matrix[jdx][idx], matrix[idx][jdx]

        for idx in matrixRange:
            for jdx in range(length // 2):
                newJdx = -(jdx + 1)
                matrix[idx][jdx], matrix[idx][newJdx] = matrix[idx][newJdx], matrix[idx][jdx]

            
matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

for row in matrix:
    print(row)

sol = Solution()
sol.rotate(matrix)

print("Rotate 90 degree clockwise")

for row in matrix:
    print(row)
