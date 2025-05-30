<p align="center">
  <img src="https://raw.githubusercontent.com/t-mabrar/smart_harvest/refs/heads/main/assets/images/logo.png" alt="Smart Harvest Logo" width="120" />
</p>

<h1 align="center">📱 Smart Harvesting</h1>

<p align="center">
  <strong>Smarter Investments. Smarter Tax Savings.</strong><br>
  Unify your portfolio and unlock true financial intelligence from one seamless app.
</p>

<p align="center">
  <a href="https://zunedportfolio.in/" target="_blank">🎨 Designed by Zuned Sheikh</a> |
  <a href="https://mabrar.site/" target="_blank">💻 Developed by Mohammed Abrar</a>
</p>

---

## 🔗 Live Product Page

👉 [View the Landing Page](https://mabrar.site/apps/smart_harvesting.html)

---

## 🚀 Overview

**Smart Harvesting** is a visionary portfolio and tax optimization app. Designed to help modern investors track, visualize, and enhance their wealth across platforms, this concept focuses on a seamless, educational, and intelligent user experience.

> ⚠️ **Note**: This is a static portfolio showcase. The listed features illustrate the design and conceptual functionality — not a functional app.

---

## 🌟 Features

- 🔗 **Unified Portfolio Tracking**  
  Connect Zerodha, Groww, Dhan, Upstox, INDmoney — all in one place.

- 📉 **Tax Harvesting Suggestions**  
  Identify and leverage tax-loss opportunities with personalized suggestions.

- 📊 **Visual Investment Analytics**  
  See your diversification, gains, and performance in clear, elegant visuals.

- 📚 **Learning Hub**  
  Built-in educational content to boost your financial IQ.

- ⚖️ **Risk & Rebalancing Insights**  
  Smart nudges to help you realign your portfolio with long-term goals.

- 🧾 **Tax Report Downloads**  
  Simple, smart, and exportable tax summary reports.

---

## 🎥 Watch How It Works

Get a feel for the user experience through this embedded product demo.


---

## 📱 Screenshots

| Splash |
|--------|
| <img src="https://raw.githubusercontent.com/t-mabrar/smart_harvest/refs/heads/main/screenshots/splash_screen.png" width="300" alt="Splash Screen" /> |

| Login | OTP Verfication |
|-------|-----------------|
| <img src="https://raw.githubusercontent.com/t-mabrar/smart_harvest/refs/heads/main/screenshots/auth_screens/login_screen.png" width="300" alt="login" /> | <img src="https://raw.githubusercontent.com/t-mabrar/smart_harvest/refs/heads/main/screenshots/auth_screens/otp_verification.png" width="300" alt="otp_verification" /> |

| GetStarted | Onboarding 1 | Onboarding 2 | Onboarding 3 |
|------------|---------------|---------------|---------------|
| <img src="https://raw.githubusercontent.com/t-mabrar/smart_harvest/refs/heads/main/screenshots/get_started.png" width="300" alt="get_started" /> | <img src="https://raw.githubusercontent.com/t-mabrar/smart_harvest/refs/heads/main/screenshots/onboarding/onboarding_1.png" width="300" alt="onboarding_1" /> | <img src="https://raw.githubusercontent.com/t-mabrar/smart_harvest/refs/heads/main/screenshots/onboarding/onboarding_2.png" width="300" alt="onboarding_2" /> | <img src="https://raw.githubusercontent.com/t-mabrar/smart_harvest/refs/heads/main/screenshots/onboarding/onboarding_3.png" width="300" alt="onboarding_3" /> |


| Connect Portfolio | Portfolio Permission  | Fetching Portfolio | Portfolio Link Successfully |
|----------------|------------|----------| ---------|
| <img src="https://raw.githubusercontent.com/t-mabrar/smart_harvest/refs/heads/main/screenshots/connect_portfolio/connect_your_portfolio.png" width="300" alt="connect_your_portfolio" /> | <img src="https://raw.githubusercontent.com/t-mabrar/smart_harvest/refs/heads/main/screenshots/connect_portfolio/investment_permission.png" width="300" alt="investment_permission" /> | <img src="https://raw.githubusercontent.com/t-mabrar/smart_harvest/refs/heads/main/screenshots/connect_portfolio/fetching_portfolio.png" width="300" alt="fetching_portfolio" />| <img src="https://raw.githubusercontent.com/t-mabrar/smart_harvest/refs/heads/main/screenshots/connect_portfolio/portfolio_link_successfully.png" width="300" alt="portfolio_link_successfully" /> |

| Dashboard | Harvesting | Learning | Menu Screen | About Us | Switch Portfolio | Update Profile |
|---------|----------|------| ------------ | --------- | ----------- | ----------- |
| <img src="https://raw.githubusercontent.com/t-mabrar/smart_harvest/refs/heads/main/screenshots/home/dashboard.png" width="300" alt="dashboard" /> | <img src="https://raw.githubusercontent.com/t-mabrar/smart_harvest/refs/heads/main/screenshots/home/harvesting.png" width="300" alt="harvesting" /> | <img src="https://raw.githubusercontent.com/t-mabrar/smart_harvest/refs/heads/main/screenshots/home/learning.png" width="300" alt="learning" /> | <img src="https://raw.githubusercontent.com/t-mabrar/smart_harvest/refs/heads/main/screenshots/home/menu_screen.png" width="300" alt="menu_screen" /> | <img src="https://raw.githubusercontent.com/t-mabrar/smart_harvest/refs/heads/main/screenshots/home/about_us.png" width="300" alt="about_us" /> | <img src="https://raw.githubusercontent.com/t-mabrar/smart_harvest/refs/heads/main/screenshots/home/switch_portfolio.png" width="300" alt="switch_portfolio" /> | <img src="https://raw.githubusercontent.com/t-mabrar/smart_harvest/refs/heads/main/screenshots/home/profile.png" width="300" alt="profile" /> |

---

## 📂 Folder Structure

```
lib
    ├── core
    │   ├── app_theme.dart
    │   └── extensions.dart
    ├── main.dart
    └── screens
    │   ├── auth_screens
    │       ├── login_screen.dart
    │       └── otp_verification.dart
    │   ├── connect_portfolio
    │       ├── connect_your_portfolio.dart
    │       ├── fetching_portfolio.dart
    │       ├── investment_permissions.dart
    │       └── investment_verification.dart
    │   ├── get_started_screen.dart
    │   ├── home
    │       ├── bottom_menu_bar.dart
    │       ├── dashobard
    │       │   ├── dashboard_screen.dart
    │       │   ├── each_stock_card.dart
    │       │   ├── gain_and_loss.dart
    │       │   ├── portfolio_value.dart
    │       │   ├── potential_savings.dart
    │       │   ├── stocks_list.dart
    │       │   └── tax_strategies.dart
    │       ├── default
    │       │   └── section_title.dart
    │       ├── harvesting
    │       │   ├── harvesting_each_stock_card.dart
    │       │   ├── harvesting_insight_card.dart
    │       │   ├── harvesting_screen.dart
    │       │   ├── max_savings.dart
    │       │   ├── net_taxable_gain.dart
    │       │   ├── tax_calculation.dart
    │       │   └── tax_savings_tax_harvesting.dart
    │       ├── home_screen.dart
    │       ├── learning
    │       │   └── learning_screen.dart
    │       ├── menu
    │       │   ├── about_us_screen.dart
    │       │   ├── menu_item.dart
    │       │   ├── menu_screen.dart
    │       │   └── profile_update.dart
    │       ├── section_design.dart
    │       └── top_app_bar.dart
    │   ├── onboarding_screen.dart
    │   ├── splash_screen.dart
    │   └── widgets
    │       ├── app_background.dart
    │       ├── designer_details.dart
    │       ├── menu_button.dart
    │       ├── navigate_pop_button.dart
    │       ├── pre_title_and_title.dart
    │       └── terms_conditions_and_privacy_policy.dart

```


---

## 📂 Repository

- **GitHub**: [github.com/t-mabrar/smart_harvest](https://github.com/t-mabrar/smart_harvest)

---

## ✨ Credits

- 🎨 **UI/UX Design**: [Zuned Sheikh](https://zunedportfolio.in/)
- 💻 **Development**: [Mohammed Abrar](https://mabrar.site/)
- 📎 **Product Page**: [https://mabrar.site/apps/smart_harvesting.html](https://mabrar.site/apps/smart_harvesting.html)

---

## 🛑 License

This project is built for educational and portfolio purposes only. Reuse or redistribution requires permission from the authors.

---

