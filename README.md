# New Relic Phoenix Demo Application

[![New Relic Experimental header](https://github.com/newrelic/opensource-website/raw/master/src/images/categories/Experimental.png)](https://opensource.newrelic.com/oss-category/#new-relic-experimental)

![GitHub forks](https://img.shields.io/github/forks/newrelic-experimental/nr-phoenix-demo-app?style=social)
![GitHub stars](https://img.shields.io/github/stars/newrelic-experimental/nr-phoenix-demo-app?style=social)
![GitHub watchers](https://img.shields.io/github/watchers/newrelic-experimental/nr-phoenix-demo-app?style=social)

![GitHub last commit](https://img.shields.io/github/last-commit/newrelic-experimental/nr-phoenix-demo-app)

![GitHub issues](https://img.shields.io/github/issues/newrelic-experimental/nr-phoenix-demo-app)
![GitHub issues closed](https://img.shields.io/github/issues-closed/newrelic-experimental/nr-phoenix-demo-app)
![GitHub pull requests](https://img.shields.io/github/issues-pr/newrelic-experimental/nr-phoenix-demo-app)
![GitHub pull requests closed](https://img.shields.io/github/issues-pr-closed/newrelic-experimental/nr-phoenix-demo-app)

[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg)](CODE_OF_CONDUCT.md)
[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](./LICENSE.txt)

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

Learn how to integrate the [New Relix Elixir Agent](https://github.com/newrelic/elixir_agent) into your Phoenix web application.

This is a fully functioning web application running on Phoenix that incorporates the New Relic Elixir agent to send telemetry data to the New Relic One dashboard. You can fork this repository to start building your own Phoenix app instrumented with New Relic, or copy and paste the relevant sections from it and add it to your own code.

* [Requirements](#requirements)
* [Installation](#installation)
* [Usage](#usage)
    * [Customizing The App](#customizing-the-app)
    * [Deploying to Heroku](#deploying-to-heroku)
* [Support](#support)
* [License](#license)

## Requirements

This app was built with Elixir v1.13.2 and Phoenix v1.6.6.

## Installation

Once you clone or fork the repository, first change into the directory and execute the following commands in your terminal:

```bash
$ mix octo.create
$ mix.octo.migrate
```

Lastly, rename the `.env.sample` file to `.env`.

## Usage

To use this app you must [sign up for an account with New Relic](https://newrelic.com/signup?utm_source=devrel&utm_medium=organic_social&utm_campaign=github_newrelic_experimental_devrel_repo). An account with New Relic is and will always be free. Once you have an account, create a new license key in the API keys section of the user settings, and copy the value to your `.env` file's `NEW_RELIC_LICENSE_KEY=` value.

The configuration for the New Relic Elixir agent can be found inside the `config/config.exs` file. You can customize the name that will appear for your application in the New Relic dashboard by changing the `app_name` setting:

```elixir
config :new_relic_agent,
  app_name: "nr_phoenix_demo",
  license_key: System.get_env("NEW_RELIC_LICENSE_KEY")
```

Once you have done that, you can start your app locally by running `mix phx.server` from the command line and
navigate to `localhost:4000` in your web browser.

### Deploying to Heroku

You can deploy the application directly from this GitHub repository by clicking on the `Deploy to Heroku` button at the top of this README. Once you do that you still must set your New Relic License key in Heroku. You can either do so at the time you are initializing your application after you have the clicked the `Deploy to Heroku` button above, or after from within the Heroku Dashboard.

After you have clicked the above `Deploy to Heroku` button, you will see one option for the `config vars` in the Heroku deployment settings. Add your New Relic License Key before clicking the final `Deploy app` button. This will ensure your application is deployed to Heroku with your information.

Alternatively, you can do so from with your Heroku Dashboard's application settings by [managing the config vars](https://devcenter.heroku.com/articles/config-vars#using-the-heroku-dashboard) for your Phoenix app after deploying. You will need to add the environment variable: `NEW_RELIC_LICENSE_KEY`.

## Support

New Relic has open-sourced this project. This project is provided AS-IS WITHOUT WARRANTY OR DEDICATED SUPPORT. Issues and contributions should be reported to the project here on GitHub.

We encourage you to bring your experiences and questions to the [Explorers Hub](https://discuss.newrelic.com) where our community members collaborate on solutions and new ideas.

## Contributing

We encourage your contributions to improve this Phoenix demo app! Keep in mind when you submit your pull request, you'll need to sign the CLA via the click-through using CLA-Assistant. You only have to sign the CLA one time per project. If you have any questions, or to execute our corporate CLA, required if your contribution is on behalf of a company, please drop us an email at opensource@newrelic.com.

**A note about vulnerabilities**

As noted in our [security policy](../../security/policy), New Relic is committed to the privacy and security of our customers and their data. We believe that providing coordinated disclosure by security researchers and engaging with the security community are important means to achieve our security goals.

If you believe you have found a security vulnerability in this project or any of New Relic's products or websites, we welcome and greatly appreciate you reporting it to New Relic through [HackerOne](https://hackerone.com/newrelic).

## License

This project is licensed under the [Apache 2.0](http://apache.org/licenses/LICENSE-2.0.txt) License.

[license]: LICENSE.md