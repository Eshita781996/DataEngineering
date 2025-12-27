from collections import deque

def canFinish(numCourses, prerequisites):
    graph = [[] for _ in range(numCourses)]
    indegree = [0] * numCourses

    for course, prereq in prerequisites:
        graph[prereq].append(course)
        indegree[course] += 1

    queue = deque()
    for i in range(numCourses):
        if indegree[i] == 0:
            queue.append(i)

    taken = 0

    while queue:
        curr = queue.popleft()
        taken += 1

        for next_course in graph[curr]:
            indegree[next_course] -= 1
            if indegree[next_course] == 0:
                queue.append(next_course)

    return taken == numCourses

numCourses = 2
prerequisites = [[1, 0]]
print(canFinish(numCourses, prerequisites))
