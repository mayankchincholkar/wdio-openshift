describe('webdriver.io page', () => {
    it('should have the right title', () => {
        browser.url('/');
        const title = browser.getTitle();
        console.log('Test Name: '+global["testname"]);
        console.log('Title: '+title)
    });
});