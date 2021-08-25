export $(cat env/env-${HW_ENV})
export SW_ENV=dev

docker-compose --project-name calvincaulfield-drama "$@"