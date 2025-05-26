# Remote Attach Container 
## Standard Python Structure

I welcome changes to the structure and discussions.

- This project ensure it is possible to debug using the same environment as the docker container.

## Poetry
- Minimum requirement is that you have poetry installed.
- This can be accomplished installing requirements.dev.txt

Initilize .venv locally and install libraries
```bash
python -m venv .venv
pip install -r requirements.dev.txt
poetry install
```

To be able to add other libraries
```
poetry add library_name==version
```

This proeject has been developed using ruff.toml, which 
ensures formatting is consistent.

# Running

Visit the swagger url at: 
[http://localhost:8081/docs](http://localhost:8081/docs)


## Running locally - No debugging


Start the local server:
```bash
docker-compose --file docker-compose.yml up --build
```


## Running locally - with debugging

This codes can attach using 'remote attach' and step through 
the code even when it is running through the container.

Assumes the use of vscode.

Start the local server:
```bash
docker-compose --file docker-compose-debug.yml up --build
```

launch.json has ```Python Debugger: Remote Attach``` which
can attach to the running server.
This makes it possible to set `break points` and step through the code.


