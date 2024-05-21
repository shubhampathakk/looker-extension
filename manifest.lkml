project_name: "helloworld-js"

application: helloworld-js {
  label: "Helloworld (JavaScript)"
  url: "https://localhost:8080/dist/bundle.js"
  entitlements: {
    core_api_methods: ["me"]
    use_embeds: yes
  }
}
