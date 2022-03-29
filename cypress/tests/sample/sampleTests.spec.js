/** *****************************************************************************
 * Licensed Materials - Property of Red Hat, Inc.
 * Copyright (c) 2022 Red Hat, Inc.
 ****************************************************************************** */


/// <reference types="cypress" />


describe('My Sample Test', () => {
  it('Visits the Openshit console Page', () => {
    cy.visit('http://console-openshift-console.apps.ci-ln-kxi1l5k-72292.origin-ci-int-gce.dev.rhcloud.com', {timeout: 60000})
    cy.get('#inputUsername', { timeout: 20000 }).click().focused().type('kubeadmin')
    cy.get('#inputPassword', { timeout: 20000 }).click().focused().type('your password')
    cy.get('button[type="submit"]', { timeout: 20000 }).click()
  })
})
