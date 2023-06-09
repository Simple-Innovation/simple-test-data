<a name="readme-top"></a>

# simple-test-data

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/Simple-Innovation/simple-test-data">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">Simple Test Data</h3>

  <p align="center">
    A PowerShell module that provides commands that create test data.
    <br />
    <a href="https://github.com/Simple-Innovation/simple-test-data"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/Simple-Innovation/simple-test-data">View Demo</a>
    ·
    <a href="https://github.com/Simple-Innovation/simple-test-data/issues">Report Bug</a>
    ·
    <a href="https://github.com/Simple-Innovation/simple-test-data/issues">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project

PowerShell because it can be easily accessed from Linux and Windows machines and all of the source it uses is available for inspection.

This means the scripts can be used from editors like VSCode but also GitHub Actions can run them.

This means that security can assure themselves that the code is not harmful.

[![Product Name Screen Shot][product-screenshot]](https://example.com)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<https://github.com/Simple-Innovation/simple-test-data/blob/main/LICENSE.txt>

### Built With

- [![PowerShell][PowerShell.ps1]][PowerShell-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

If using a system without PowerShell installed, e.g. GitHub CodeSpaces.

- PowerShell (Ubuntu)

  ```sh
  wget -q https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
  sudo dpkg -i packages-microsoft-prod.deb
  sudo apt update
  sudo apt install powershell
  pwsh
  ```

### Installation

1. Clone the repo

   ```sh
   git clone https://github.com/Simple-Innovation/simple-test-data.git
   ```

2. Install PowerShell Module

   ```ps1
   Import-Module ./SimpleTestData.psm1 
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->
## Usage

1. Create 10 KiB of test data in the [test](/test) folder based on the files and folders in the [seed](/seed) folder.

```ps1
Copy-DataCollection -SourceFolder:./seed/ -TargetFolder:./test/ -MaximumByteTotal:$(10 * 1024)
```

_For more examples, please refer to the [Documentation](https://example.com)_

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROADMAP -->
## Roadmap

- [ ] Detect empty folders
- [ ] Limit based on existing folder size

See the [open issues](https://github.com/Simple-Innovation/simple-test-data/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->
## Contact

Sebastian Rogers - [@SebastianRoger8](https://twitter.com/SebastianRoger8) - <sebastian.rogers@simpleinnovation.co.uk>

Project Link: [https://github.com/Simple-Innovation/simple-test-data](https://github.com/Simple-Innovation/simple-test-data)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

- [digway/LoremIpsum](https://github.com/digway/LoremIpsum) for the Lorem Ipsum generator.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/Simple-Innovation/simple-test-data.svg?style=for-the-badge
[contributors-url]: https://github.com/Simple-Innovation/simple-test-data/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Simple-Innovation/simple-test-data.svg?style=for-the-badge
[forks-url]: https://github.com/Simple-Innovation/simple-test-data/network/members
[stars-shield]: https://img.shields.io/github/stars/Simple-Innovation/simple-test-data.svg?style=for-the-badge
[stars-url]: https://github.com/Simple-Innovation/simple-test-data/stargazers
[issues-shield]: https://img.shields.io/github/issues/Simple-Innovation/simple-test-data.svg?style=for-the-badge
[issues-url]: https://github.com/Simple-Innovation/simple-test-data/issues
[license-shield]: https://img.shields.io/github/license/Simple-Innovation/simple-test-data.svg?style=for-the-badge
[license-url]: https://github.com/Simple-Innovation/simple-test-data/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/sebastianrogers
[product-screenshot]: images/screenshot.png
[PowerShell.ps1]: https://img.shields.io/badge/powershell-000000?style=for-the-badge&logo=powershell&logoColor=white
[PowerShell-url]: https://learn.microsoft.com/en-us/powershell/
