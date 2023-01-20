[![CI](https://github.com/tj-actions/checkly-trigger/workflows/CI/badge.svg)](https://github.com/tj-actions/checkly-trigger/actions?query=workflow%3ACI)
[![Update release version.](https://github.com/tj-actions/checkly-trigger/workflows/Update%20release%20version./badge.svg)](https://github.com/tj-actions/checkly-trigger/actions?query=workflow%3A%22Update+release+version.%22)
[![Public workflows that use this action.](https://img.shields.io/endpoint?url=https%3A%2F%2Fused-by.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Dtj-actions%2Fcheckly-trigger%26badge%3Dtrue)](https://github.com/search?o=desc\&q=tj-actions+checkly-trigger+path%3A.github%2Fworkflows+language%3AYAML\&s=\&type=Code)

## checkly-trigger

CLI trigger for [checkly](https://www.checklyhq.com/docs/cicd/triggers/)

```yaml
...
    steps:
      - uses: actions/checkout@v2
      - name: Checkly Trigger
        uses: tj-actions/checkly-trigger@v1
        with:
          trigger-url: ${{ secrets.TRIGGER_URL }}
```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|      INPUT       |  TYPE  | REQUIRED |        DEFAULT        |                                                                          DESCRIPTION                                                                           |
|------------------|--------|----------|-----------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------|
|    deployment    | string |  false   |       `"false"`       |                                            Set to true to record each<br>trigger invocation as a deployment event.                                             |
|  deployment-id   | string |  false   |                       |                                               The deployment id of your triggered<br>check, i.e. "deployment-1".                                               |
| environment-name | string |  false   |                       |                                              The environment name of your triggered<br>check, i.e. "production".                                               |
| environment-url  | string |  false   |                       |                         A staging or preview URL injected<br> as ENVIRONMENT\_URL in browser checks and<br>auto-replaced in API checks.                         |
|    repository    | string |  false   |                       |                                                          Repository name, i.e. "checkly/backend-api".                                                          |
|   runLocation    | string |  false   |                       | An optional data center location where<br> to run your triggered check. Use<br> the shorter names here, like eu-west-1<br>or us-west-1. Defaults to us-east-1. |
|       sha        | string |  false   | `"${{ github.sha }}"` |                                       Git hash, tag, version "v1.0.1" or<br>other identifier making this deploy unique.                                        |
|   trigger-url    | string |   true   |                       |                                                                The URL of the Checkly trigger.                                                                 |

<!-- AUTO-DOC-INPUT:END -->

*   Free software: [MIT license](LICENSE)

If you feel generous and want to show some extra appreciation:

[![Buy me a coffee][buymeacoffee-shield]][buymeacoffee]

[buymeacoffee]: https://www.buymeacoffee.com/jackton1

[buymeacoffee-shield]: https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png

## Features

*   TODO

## Credits

This package was created with [Cookiecutter](https://github.com/cookiecutter/cookiecutter) using [cookiecutter-action](https://github.com/tj-actions/cookiecutter-action)

## Report Bugs

Report bugs at https://github.com/tj-actions/checkly-trigger/issues.

If you are reporting a bug, please include:

*   Your operating system name and version.
*   Any details about your workflow that might be helpful in troubleshooting.
*   Detailed steps to reproduce the bug.
