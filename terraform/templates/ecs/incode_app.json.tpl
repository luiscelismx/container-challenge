[
  {
    "name": "incode-app",
    "image": "${app_image}",
    "cpu": ${fargate_cpu},
    "memory": ${fargate_memory},
    "networkMode": "awsvpc",
    "logConfiguration": {
        "logDriver": "awslogs",
        "options": {
          "awslogs-group": "/ecs/incode-app",
          "awslogs-region": "${aws_region}",
          "awslogs-stream-prefix": "ecs"
        }
    },
    "portMappings": [
      {
        "containerPort": ${app_port},
        "hostPort": ${app_port}
      }
    ],
    "environment": [
        {
            "name": "AWS_ACCESS_KEY_ID",
            "value": "AKIA4CNR5LTCPOLGWZ4N"
        },
        {
            "name": "AWS_SECRET_ACCESS_KEY",
            "value": "BCQkERMCnQzxlag/nXwprX1dq8nZWFuQmFUJNsQg"
        }
    ]
  }
]