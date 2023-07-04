This is a [Next.js](https://nextjs.org/) project bootstrapped with [`create-next-app`](https://github.com/vercel/next.js/tree/canary/packages/create-next-app).

## Getting Started

First, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `app/page.tsx`. The page auto-updates as you edit the file.

This project uses [`next/font`](https://nextjs.org/docs/basic-features/font-optimization) to automatically optimize and load Inter, a custom Google Font.

# Requirements

Use podman (or Docker)

```
brew install podman
podman machine init
podman machine start
```

# Building

```
podman run --rm -v "${PWD}":/work --workdir=/work cgr.dev/chainguard/melange keygen

podman run --privileged --rm -v "${PWD}":/work cgr.dev/chainguard/melange build --arch host --signing-key melange.rsa melange.yaml

podman run --privileged  -v "$PWD":/work cgr.dev/chainguard/apko build --arch host -k melange.rsa.pub apko.yaml melange-apko-test output.tar
```

# Running

```
podman load < output.tar
podman run -p 8080:8080 --rm melange-apko-test:latest-arm64
```