# AI Agent Sandbox

AIエージェントがサンドボックスとして利用できるDockerイメージを作成するためのリポジトリです。

## 含まれるツール

このDockerイメージには、AIエージェントによる開発作業ですぐに使えるランタイムやCLIを同梱しています。

- Pythonのパッケージ・プロジェクト管理ツール `uv` / `uvx`
- LTS版Node.jsと、最新版のパッケージマネージャー `pnpm`
- コマンドランナー `just`
- 開発に便利なCLI（`git`、`curl`、`jq`、`ripgrep`、`file`、`unzip` など）
- Python 3、ビルドツール、OpenSSHクライアント

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
