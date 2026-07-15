# AI Agent Sandbox

AIエージェントがサンドボックスとして利用できるDockerイメージを作成するためのリポジトリです。

## Docker Hub情報

- Docker Hubユーザー名: `INJAGA`
- Dockerイメージ名: `ai-agent-sandbox`
- Docker Hub公開先: `docker.io/injaga/ai-agent-sandbox`

## Docker Sandboxes（`sbx`）で利用する

```bash
sbx run --template docker.io/injaga/ai-agent-sandbox:latest claude # Claude Code
sbx run --template docker.io/injaga/ai-agent-sandbox:latest codex # Codex
sbx run --template docker.io/injaga/ai-agent-sandbox:latest copilot # Github Copilot CLI
sbx run --template docker.io/injaga/ai-agent-sandbox:latest cursor # Cursor CLI
sbx run --template docker.io/injaga/ai-agent-sandbox:latest opencode # Opencode
sbx run --template docker.io/injaga/ai-agent-sandbox:latest shell # Bash
```
