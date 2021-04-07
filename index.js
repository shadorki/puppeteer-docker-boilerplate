const puppeteer = require('puppeteer');

(async () => {
  try {
    const browser = await puppeteer.launch({
      headless: true,
      executablePath: '/usr/bin/chromium-browser',
      args: [
        "--no-sandbox",
        "--disable-gpu"
      ]
    });
    const page = await browser.newPage();
    await page.goto('https://example.com');
    await page.screenshot({ path: './output/example.png' });

    await browser.close();
    process.exit(0)
  } catch(err) {
    console.error(err)
    process.exit(1)
  }
})();
