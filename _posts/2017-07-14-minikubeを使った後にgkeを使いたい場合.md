---
id: 428
title: minikubeを使った後にGKEを使いたい場合
date: 2017-07-14T13:04:59+00:00
author: kter
layout: post
#guid: https://blog.kter.jp/?p=428
#permalink: /?p=428
categories:
  - Docker
  - GCP
  - Kubernetes
tags:
  - gcloud
  - GCP
  - GKE
  - Kubernetes
  - minikube
---
minikubeを使ったあとにGKEを使おうと(kubectlコマンドを実行)すると、次のエラーが発生して接続できない。

<pre class="lang:default decode:true " >Unable to connect to the server: dial tcp 192.168.99.100:8443: i/o timeout
もしくは
The connection to the server localhost:8080 was refused - did you specify the right host or port?</pre>

対応としては`gcloud container clusters`コマンドでクラスタ名を指定すればよい。

<pre class="lang:default decode:true " ># 使用するクラスタ名を調べる
gcloud container clusters list

# クラスタを選択
gcloud container clusters get-credentials (クラスタ名)</pre>