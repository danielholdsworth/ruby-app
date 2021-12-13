describe('My First Test', () => {
    it("has anchor tags", () => {
        cy.visit("2020/develop-preview-test");
        cy.contains("a", "#");
    })
})