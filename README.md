# New Relic Phoenix Demo Application

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

## License

This library is released under the [MIT License][license]

[license]: LICENSE.md