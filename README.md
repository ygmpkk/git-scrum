# Git scrum flow

## Installation


```
git pull https://github.com/ygmpkk/git-scrum.git
make install
```

## Usage

Init to git repo

```
git scrum init
```

Start a sprint base on develop branch

```
git scrum sprint start [SPRINT NAME]
```

Finish the sprint will auto merge to develop branch

```
git scrum sprint finsh [SPRINT NAME]
```

Start a task base on current sprint branch

```
git scrum task start [TASK NAME]
```

Finish the task will merge to current sprint branch

```
git scrum task finsh [TASK NAME]
```
