# run keyguard
cd keyguard
git pull
yarn serve & > /dev/null 2>&1

# run hub
cd ../hub
git pull
yarn serve & > /dev/null 2>&1

cd ../wallet
if [ ! -f ./.vscode/tasks.json ]; then
    cp wallet_automatic_task.json ./.vscode/tasks.json # run automatically yarn serve
fi
code .
