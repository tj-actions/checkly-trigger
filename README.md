[![CI](https://github.com/tj-actions/checkly-trigger/workflows/CI/badge.svg)](https://github.com/tj-actions/checkly-trigger/actions?query=workflow%3ACI)
[![Update release version.](https://github.com/tj-actions/checkly-trigger/workflows/Update%20release%20version./badge.svg)](https://github.com/tj-actions/checkly-trigger/actions?query=workflow%3A%22Update+release+version.%22)
[![Public workflows that use this action.](https://img.shields.io/endpoint?url=https%3A%2F%2Fused-by.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Dtj-actions%2Fcheckly-trigger%26badge%3Dtrue)](https://github.com/search?o=desc\&q=tj-actions+checkly-trigger+path%3A.github%2Fworkflows+language%3AYAML\&s=\&type=Code)

## checkly-trigger

CLI trigger for [checkly](https://www.checklyhq.com/docs/cicd/triggers/).

```yaml
...
    steps:
      - name: Checkly Trigger
        uses: tj-actions/checkly-trigger@v2
        with:
          trigger-url: ${{ secrets.TRIGGER_URL }}
```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|                                      INPUT                                       |  TYPE  | REQUIRED |           DEFAULT            |                                                                DESCRIPTION                                                                |
|----------------------------------------------------------------------------------|--------|----------|------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|
|          <a name="input_deployment"></a>[deployment](#input_deployment)          | string |  false   |          `"false"`           |                               Set to true to record <br>each trigger invocation as a <br>deployment event.                                |
|     <a name="input_deployment-id"></a>[deployment-id](#input_deployment-id)      | string |  false   |                              |                                   The deployment id of your <br>triggered check, i.e. "deployment-1".                                     |
| <a name="input_environment-name"></a>[environment-name](#input_environment-name) | string |  false   |                              |                                   The environment name of your <br>triggered check, i.e. "production".                                    |
|  <a name="input_environment-url"></a>[environment-url](#input_environment-url)   | string |  false   |                              |           A staging or preview URL <br>injected as ENVIRONMENT\_URL in browser <br>checks and auto-replaced in API <br>checks.             |
|          <a name="input_repository"></a>[repository](#input_repository)          | string |  false   | `"${{ github.repository }}"` |                                               Repository name, i.e. "checkly/backend-api".                                                |
|       <a name="input_run-location"></a>[run-location](#input_run-location)       | string |  false   |        `"us-east-1"`         | An optional data center location <br>where to run your triggered <br>check. Use the shorter names <br>here, like eu-west-1 or us-west-1.  |
|                    <a name="input_sha"></a>[sha](#input_sha)                     | string |  false   |    `"${{ github.sha }}"`     |                          Git hash, tag, version "v1.0.1" <br>or other identifier making this <br>deploy unique.                           |
|        <a name="input_trigger-url"></a>[trigger-url](#input_trigger-url)         | string |   true   |                              |                                                   The URL of the Checkly <br>trigger.                                                     |

<!-- AUTO-DOC-INPUT:END -->

*   Free software: [MIT license](LICENSE)

If you feel generous and want to show some extra appreciation:

[![Buy me a coffee][buymeacoffee-shield]][buymeacoffee]

[buymeacoffee]: https://www.buymeacoffee.com/jackton1

[buymeacoffee-shield]: https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png

## Credits

This package was created with [Cookiecutter](https://github.com/cookiecutter/cookiecutter) using [cookiecutter-action](https://github.com/tj-actions/cookiecutter-action)

## Report Bugs

Report bugs at https://github.com/tj-actions/checkly-trigger/issues.

If you are reporting a bug, please include:

*   Your operating system name and version.
*   Any details about your workflow that might be helpful in troubleshooting.
*   Detailed steps to reproduce the bug.
