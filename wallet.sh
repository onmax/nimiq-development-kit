# run keyguard
cd keyguard
yarn serve >> /dev/null 2>&1

cd ../wallet
if [ ! -f ./.vscode/tasks.json ]; then
    mkdir -p ./.vscode
    cp ../wallet_automatic_task.json ./.vscode/tasks.json # run automatically yarn serve
fi
code .

# run hub
cd ../hub
yarn serve

